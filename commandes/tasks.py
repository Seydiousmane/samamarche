from celery.decorators import task
from django.core.mail import send_mail
from .models import Commande

@task
def commande_cree(commande_id):
    """
    Task to send an e-mail notification when an order is
    successfully created.
    """
    commande = Commande.objects.get(id=commande_id)
    sujet = 'Commande numéro {}'.format(commande.id)
    message = 'Cher {} ,\n\nYou have successfully placed an order.\
                Your order id is {}.'.format(commande.prenom,
                                            commande.id)
    mail_sent = send_mail(sujet,
                        message,
                        'diattaseydi92@gmail.com',
                        [commande.email])

    return mail_sent
