// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start();
// require("turbolinks").start();
require("@rails/activestorage").start();
require("channels");
require("firebase")
require("firebaseui")
import 'bootstrap'
import './stylesheets/application'
import firebase from 'firebase/app';

document.addEventListener("turbolinks:load", () => {
    $('[data-toggle="tooltip"]').tooltip();
    $('[data-toggle="popover"]').popover()
});

var config = {
    apiKey: "AIzaSyB2wIa2QvROQ5bb-dKXl4NVmeSU9EEzwvo",
    authDomain: "price-e48d0.firebaseapp.com",
    databaseURL: "https://price-e48d0.firebaseio.com",
    projectId: "price-e48d0",
    storageBucket: "price-e48d0.appspot.com",
    messagingSenderId: "664403736345",
    appId: "1:664403736345:web:e2b3ebee27ccca48a13788",
    measurementId: "G-SEGTTM61GF"
};
firebase.initializeApp(config);
firebase.analytics();

var ui = new firebaseui.auth.AuthUI(firebase.auth());
ui.start('#firebaseui-auth-container', {
    signInOptions: [
        {provider: firebase.auth.PhoneAuthProvider.PROVIDER_ID, defaultCountry: 'RU'},
        firebase.auth.EmailAuthProvider.PROVIDER_ID
    ],
    callbacks: {
        signInSuccessWithAuthResult: (currentUser) => {
            $.post('/sign_in', {
                    authenticity_token: $('meta[name="csrf-token"]').attr("content"),
                    user: {
                        uid:   currentUser.user.uid,
                        email: currentUser.user.email,
                        name:  currentUser.user.displayName,
                        phone: currentUser.user.phoneNumber
                    }
                },
                () => window.location.reload()
            );
            return false;
        }
    },
    credentialHelper: firebaseui.auth.CredentialHelper.GOOGLE_YOLO
});

// var componentRequireContext = require.context("components", true);
// var ReactRailsUJS = require("react_ujs");
// ReactRailsUJS.useContext(componentRequireContext);

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
