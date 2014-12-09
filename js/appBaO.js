/**
 * appBao.js
 * 
 * @auteur     marc laville
 * @Copyleft 2011-2012
 * @date       06/09/2011
 * @version    0.3
 * @revision   $4$
 *
 * @date_revision  12/11/2011 : Modification du titre de la fenêtre navigateur
 * @date_revision  24/01/2012 : Personnalisation du texte du bouton de demande de login (obj.paramJson.txt_demandeLogin)
 * @date_revision   marc laville 16/05/2012 : Transmet le nom de la société au panneau de login
 * @date_revision   marc laville 20/10/2012 : Affichage de l espace occupé
 *
 * Appel les composants de l'application
 * 
 * Licensed under the GPL license:
 *   http://www.opensource.org/licenses/mit-license.php
 */

var appBao = {
	version : 0.9,
	fieldEspace : new Ext.form.DisplayField({
		name: 'espace',
		fieldLabel: 'Display field',
		value: 'Display field <span style="color:green;">value</span>',
		style: {
			fontFamily: 'arial,tahoma,helvetica,sans-serif',
			fontSize: '11px',
			padding: '0 8px',
			textAlign: 'right'
		}
	})
};

/*
 * Chargement dynamique des libellés
 */
var objLibelle = {};

function libelleChamp( unClef ) {
	valretour = objLibelle[unClef];
	
	return valretour == undefined ? unClef : valretour;
}

function initApp(nomUser, nomSociete) {
	Ext.Ajax.request({
		url:'php/libelles.php', 
		success:function(response){
			obj = Ext.util.JSON.decode(response.responseText); 
			if(obj.success) {
				objLibelle = obj.libellesJson;

				showViewPort(nomUser, nomSociete);
				
			}
		},
		failure: function(response, action){
			Ext.Msg.alert('Status', 'Erreur de chargement des libellés !');
		}
	});

	return;
}

Ext.onReady(function(){
	Ext.QuickTips.init();
	Ext.Ajax.request({
		url:'php/controlIdent.php', 
		success:function(response){
			obj = Ext.util.JSON.decode(response.responseText);
			document.title = "BàO - " + obj.societe;
			if( obj.style != undefined ) {
//				setActiveStyleSheet('accessibilite');
				setActiveStyleSheet( obj.style );
			}
			if(obj.success) {
				// Affichage du viewPort
				initApp(obj.user, obj.societe);
				appBao.fieldEspace.setValue( Math.round( 1000 * obj.espaceOccupe / 1024 / 1024 ) / 1000 + " Mo" )
			} else {
				// Affichage Panneau de login 
				// Un transmet le texte du message de demande de log et le nom de la societe
				if( obj.errors != undefined ) {
					if( obj.user != null ) {
						alert( obj.errors.reason );
					}
				}
				PanelLogin(false, obj.paramJson.txt_demandeLogin, obj.societe);
			}
		},
		failure: function(response, action){
			Ext.Msg.alert('Status', 'Erreur d\'authentification !');
		}
	});

});