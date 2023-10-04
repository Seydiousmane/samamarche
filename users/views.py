from django.shortcuts import render, redirect
from django.contrib.auth import authenticate, login, logout
from django.contrib import messages
from django.contrib.auth.forms import AuthenticationForm, PasswordResetForm
from django.http import HttpResponse, HttpResponseRedirect

from django.contrib.auth.mixins import LoginRequiredMixin
from django.views.generic import ListView
from django.views.generic.edit import CreateView, UpdateView
from django.urls import reverse

from .models import User
from .forms import RegistrationForm, UserUpdateForm, SetPasswordForm

from cart.cart import Cart
from marche.forms import SearchForm
from marche.models import Info

from django.contrib.auth.decorators import login_required

from django.contrib.auth.forms import PasswordChangeForm
from django.contrib.auth import update_session_auth_hash

from django.contrib.auth import authenticate, login
from django.contrib.auth.forms import AuthenticationForm

from django.core.mail import send_mail, BadHeaderError
from django.template.loader import render_to_string
from django.db.models.query_utils import Q
from django.utils.http import urlsafe_base64_encode, urlsafe_base64_decode, base36_to_int
from django.contrib.auth.tokens import default_token_generator
from django.utils.encoding import force_bytes


# Create your views here.
info = Info.objects.all()[:1]

def register(request):
    if request.user.is_authenticated:
        messages.success(request, "Vous êtes déjà connecté")
        return redirect("marche:accueil")

    if request.method == 'POST':
        form = RegistrationForm(request.POST)
        if form.is_valid():
            new_user = form.save()
            email = form.cleaned_data.get('prenom')
            new_user = authenticate(username=form.cleaned_data['email'],
                                    password=form.cleaned_data['password'],
                                    )
            login(request, new_user)
            return redirect('marche:accueil')
        else:
            form = RegistrationForm(request.POST)
            cart = Cart(request)

            context = {
                'searchform': SearchForm,
                'cart': cart,
                'form': form,
                'info': info
            }
            return render(request, 'users/register.html', context)
    else:

        form = RegistrationForm()
        cart = Cart(request)
        context = {
            'searchform': SearchForm,
            'cart': cart,
            'form': form,
            'info': info
        }
    return render(request, 'users/register.html', context)


@login_required(login_url='login')
def profile(request):
    if request.method == 'POST':
        form = UserUpdateForm(request.POST, instance=request.user)

        if form.is_valid():
            form.save()
            messages.success(request, f'Votre compte a été mis à jour avec succés.')
            return redirect('profile')
    else:
        form = UserUpdateForm(instance=request.user)
        cart = Cart(request)

    context = {
        'searchform': SearchForm,
        'cart': cart,
        'form': form,
        'info': info
    }
    return render(request, 'users/profile.html', context)


@login_required(login_url='login')
def change_password(request):
    if request.method == 'POST':
        form = PasswordChangeForm(request.user, request.POST)
        if form.is_valid():
            user = form.save()
            update_session_auth_hash(request, user)  # Important!
            messages.success(request, 'Votre mot de passe a été modifié avec succés')
            return redirect('password_change')
        
    else:
        form = PasswordChangeForm(request.user)
    return render(request, 'users/password_change_form.html', {
        'cart': Cart(request),
        'searchform': SearchForm,
        'form': form,
        'info': info
    })


@login_required(login_url='login')
def change_password_done(request):
    cart = Cart(request)
    context = {
        'searchform': SearchForm,
        'cart': cart,
        'info': info
    }
    return render(request, 'users/password_change_done.html', context)



def signin(request):
    if request.user.is_authenticated:
        redirect("marche:accueil")

    if request.method == 'POST':
        form = AuthenticationForm(request, data=request.POST)
        if form.is_valid():
            email = form.cleaned_data.get('username')
            password = form.cleaned_data.get('password')
            user = authenticate(request, email=email, password=password)
            if user is not None:
                login(request, user)
                return redirect('marche:accueil')
            else:
                form = AuthenticationForm(request, data=request.POST)
                context = {
                    'form' : form,
                }
                return render(request, 'users/login.html', context)
        else:
            form = AuthenticationForm(request, data=request.POST)
            context = {
                'form' : form,
            }
            return render(request, 'users/login.html', context)
    else:
        context = {
            'cart': Cart(request),
            'searchform': SearchForm,
            'form': AuthenticationForm(),
            'info': info
        }
        
    return render(request, 'users/login.html', context)


def password_reset_request(request):
    if request.method == "POST":
        form = PasswordResetForm(request.POST)
        if form.is_valid():
            data = form.cleaned_data['email']
            associate_users = User.objects.filter(Q(email=data))
            if associate_users.exists():
                for user in associate_users:
                    subject = 'Password Reset Request'
                    email_template_name = 'users/password_reset_email.html'
                    c = {
					"email":user.email,
					'domain':'127.0.0.1:8000',
					'site_name': 'Website',
					"uid": urlsafe_base64_encode(force_bytes(user.pk)),
					"user": user,
					'token': default_token_generator.make_token(user),
					'protocol': 'http',
					}
                    email = render_to_string(email_template_name, c)
                    try:
                        send_mail(subject, email, 'diattaseydi92@gmail.com', [user.email], fail_silently=False)
                    except BadHeaderError:
                        return HttpResponse('Invalid header found')
                    messages.success(request, 'Nous vous avons envoyé par e-mail des instructions vous indiquant comment réinitialiser votre mot de passe. Consultez votre boîte de réception et cliquez sur le lien fourni.')
                    return redirect('passwordinstructions')
            return redirect('passwordinstructions')
    
    form = PasswordResetForm()
    context = {
        'cart': Cart(request),
        'searchform': SearchForm,
        'form': PasswordResetForm(),
        'info': info
    }
    return render(request, 'users/password_reset_form.html', context)


def instructions_reset_page(request):
    cart = Cart(request)
    instruction = "Nous vous avons envoyé par e-mail des instructions vous indiquant comment réinitialiser votre mot de passe. Consultez votre boîte de réception et cliquez sur le lien fourni."
    context = {
        'instruction': instruction,
        'searchform': SearchForm,
        'cart': cart,
        'info': info
    }
    return render(request, 'users/password_reset_instructions.html', context)


def password_reset_confirme(request, uidb64=None, token=None, token_generator=default_token_generator, set_password_form=SetPasswordForm, post_reset_redirect=None):
    form = SetPasswordForm(request.POST)
    template_name = 'users/password_reset_confirm.html'
    assert uidb64 is not None and token is not None
    
    try:
        uid_int = base36_to_int(uidb64)
        user = User.objects.get(id=uid_int)
    except (ValueError, User.DoesNotExist):
        user = None

    ctx = {}

    if user is not None and token_generator.check_token(user, token):
        ctx['validlink'] = True
        if request.method == 'POST':
            form = SetPasswordForm(request.POST)
            if form.is_valid():

                
                form.save()
                messages.add_message(request, messages.SUCCESS, 'Your password has now been changed and you can login on any system site!',fail_silently=True)

                return HttpResponseRedirect(post_reset_redirect)
            else:
                form = SetPasswordForm(None)
        else:
            ctx['validlink'] = False
            form = SetPasswordForm
        
    context = {"form":form}
    return render(request, 'users/password_reset_confirm.html', context)



"""
class RegistrationView(CreateView):
    template_name = 'users/register.html'
    form_class = RegistrationForm

    def get_context_data(self, *args, **kwargs):
        context = super(RegistrationView, self).get_context_data(*args, **kwargs)
        context['next'] = self.request.GET.get('next')
        return context

    def get_success_url(self):
        next_url = self.request.POST.get('next')
        success_url = reverse('login')
        if next_url:
            success_url += '?next={}'.format(next_url)

        return success_url


class ProfileView(UpdateView):
    model = User
    fields = ['prenom', 'nom', 'telephone']
    template_name = 'users/profile.html'


    def get_success_url(self):
        return reverse('index')

    def get_object(self):
        return self.request.user

"""




