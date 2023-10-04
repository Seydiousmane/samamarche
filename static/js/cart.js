$("#id_departement").change(function () {
	var url = $("#commandeForm").attr("data-cities-url");
	var countryId = $(this).val();

	$.ajax({
	  url: url,
	  data: {
		'departement': countryId
	  },
	  success: function (data) {
		$("#id_quartier").html(data);
	  }
	});

  });



  $(document).ready(function() {
	$("#sidebarCollapse").on("click", function() {
	  $("#sidebar").addClass("active");
	});
  
	$(".pleoo").on("click", function() {
	  $("#sidebar").removeClass("active");
	  $(".overlay").removeClass("visible");
	});
  
	$("#sidebarCollapseX").on("click", function() {
		$("#sidebar").removeClass("active");
	});

	$("#sidebarCollapse").on("click", function() {
	  if ($("#sidebar").hasClass("active")) {
		$(".overlay").addClass("visible");
	  }
	});
  
	$("#sidebarCollapseX").on("click", function() {
	  $(".overlay").removeClass("visible");
	});
  });


  $(function() {
	// this will get the full URL at the address bar
	var url = window.location.href;

	// passes on every "a" tag
	$(".navbar-nav a").each(function() {
		// checks if its the same on the address bar
		if (url == (this.href)) {
			$(this).closest("li").addClass("active");
			//for making parent of submenu active
		   $(this).closest("li").parent().parent().addClass("active");
		}
	});

});

$(function() {
	// this will get the full URL at the address bar
	var url = window.location.href;

	// passes on every "a" tag
	$(".components a").each(function() {
		// checks if its the same on the address bar
		if (url == (this.href)) {
			$(this).closest("li").addClass("active");
			//for making parent of submenu active
		   
		}
	});

});


  $('#my-nav>.nav-item').click(function(e) {
	$('.nav-item').not(this).each(function(a, b){
		$(b).find('div.collapse.show').each(function(x, y) {
		  $(this).removeClass('show');
	  });
	});
  });


  $(function() {
	$('.components li a').click(function(e) {
	  var $this = $(this);
	  var mainList = $this.closest('ul');
	  var subLists = mainList.children('li').children('ul');
  
	  mainList.children('li').removeClass('active');
	  subLists.addClass('collapse');
  
	  $this.parent().addClass('active');
	  var selectedSublist = $this.closest('li').children('ul')
	  if (selectedSublist.hasClass('collapse'))
		selectedSublist.removeClass('collapse');
	  else
		selectedSublist.addClass('collapse');
	});
  });
  

 /* function myNewFunction(element){
	var text = element.options[element.selectedIndex].text;
	document.getElementById('test').innerHTML = text;
  }

  $('#id_quartier').on('change', function(){
	
  })*/

$('#id_quartier').on('change', function(){
	var a = $( "#id_quartier option:selected" ).attr('data-price');
	var b = $("#data-prix").attr('data-price-total');
	var c = parseInt(a) + parseInt(b)
	
	console.log(new Intl.NumberFormat('fr-FR').format(c))
	if (a){
		document.getElementById("prix_livraison").innerHTML = new Intl.NumberFormat('fr-FR').format(a) + " FCFA";
		document.getElementById("prix_total").innerHTML = new Intl.NumberFormat('fr-FR').format(c) + " FCFA";
	} else {
		document.getElementById("prix_livraison").innerHTML = 'Non disponible';
		document.getElementById("prix_total").innerHTML = "Non disponible";
	}
	
})


$('.form-order').on('submit', function(e){
	e.preventDefault()
	var produit_id = $(this).attr('data-id')
	var qy = $(this).find("#id_quantite").val()
	var quantite = qy
	var currentp = window.location.href
	$('#toast-place').append(`
	<div class="toast" role="alert" aria-live="assertive" aria-atomic="true" data-delay="3000" style="min-width:100%; background:rgb(0, 102, 79)!important;">
	  <div class="toast-header" style="background:rgb(0, 102, 79)!important;">
		<strong class="mr-auto" style="text-align:justify; color:#fff;">Votre produit a été ajouté dans votre panier.</strong>
		
		<button type="button" class="ml-2 mb-1 close" data-dismiss="toast" aria-label="Fechar">
		  <span aria-hidden="true" style="color:#fff">&times;</span>
		</button>
	  </div>
	</div>
  `	);

  	$('.toast').toast('show');
	  	$('.toast').on('hidden.bs.toast', e => {
        	$(e.currentTarget).remove();
        	console.log('Hide');
    });

    $('.toast').toast('show');
	
	data = {
		'produit': produit_id,
		'quantite': qy,
		
		'csrfmiddlewaretoken':csrftoken
	}
	var point='/cart/add/'+produit_id+'/'
	
	$.ajax({
		
		url: point,
		
		type: 'POST',
		dataType: 'json',
		data: data,
		
		success: function(){
			$("#cartv").load(location.href + " #cartv");
			$("#cartve").load(location.href + " #cartve");
			console.log("cartv");
			$("#cartval").load(location.href + " #cartval>*","");
			
		}
})
})


$('.form-order-cart').on('submit', function(e){
	e.preventDefault()
	var produit_id = $(this).attr('data-id')
	var qy = $(this).find("#id_quantite").val()
	var quantite = qy
	var currentp = window.location.href
	
	data = {
		'produit': produit_id,
		'quantite': qy,
		
		'csrfmiddlewaretoken':csrftoken
	}
	var point='/cart/update/'+produit_id+'/'
	
	$.ajax({
		
		url: point,
		
		type: 'POST',
		dataType: 'json',
		data: data,
		
		success: function(){
			$("#cartv").load(location.href + " #cartv");
			$("#cartve").load(location.href + " #cartve");
			$("#cartvv").load(location.href + " #cartvv");
			$("#cartvve").load(location.href + " #cartvve");
			$("#box-element").load(location.href + " #box-element");
			console.log("cartv");
			$("#cartval").load(location.href + " #cartval>*","");
			
		}
	})
})


$('.delete_prod_cart').on('submit', function(e){
	e.preventDefault()
	var produit_id = $(this).attr('data-id')
	var currentp = window.location.href
	toastr.success('absccd')
	data = {
		'produit': produit_id,
		'csrfmiddlewaretoken':csrftoken
	}
	var point='/cart/remove/'+produit_id+'/'
	
	$.ajax({
		
		url: point,
		
		type: 'POST',
		dataType: 'json',
		data: data,
		
		success: function(){
			$("#cartv").load(location.href + " #cartv");
			$("#cartve").load(location.href + " #cartve");
			$("#cartvv").load(location.href + " #cartvv");
			$("#cartvve").load(location.href + " #cartvve");
			$("#box-element").load(location.href + " #box-element");
			console.log("cartv");
			$("#cartval").load(location.href + " #cartval>*","");
			
		}
})
})


$(".navbar-nav a").on('click', function(e){
	var t = $(this);
    t.parents('.navbar-nav').find('li').removeClass('active');
  	t.parentsUntil('.navbar-nav', 'li').addClass('active');
});



/** 
var input = document.getElementById('id_quantite')[0];
var min = 1;
var max = 30;
 
input.onkeypress = e => {
	//  13: enter, +: 43 , -: 45
	if (13 == e.keyCode ) input.blur();
	if ([43, 45].includes(e.keyCode)) return false;
 };
 
 input.onkeyup = e => {
	if (parseInt(input.value) < min) {
	   input.value = min;
	}
	else if (parseInt(input.value) > max) {
	   input.value = max;
	}
	else {
	  input.value = parseInt(input.value);
	}
   
 };
 


$(document).on("click", ".open-incident", function (e) {
    e.preventDefault();
    var $popup = $("#popup");
    var popup_url = $(this).data("popup-url");
    $(".modal-body", $popup).load(popup_url, function () {
      $popup.modal("show");
    });
  });
**/
