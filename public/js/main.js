
// name variables
var $mainRegBtn;
var $mainLoginBtn;

var $subRegBtn;
var $subLoginBtn;

var $RegCloseBtn;
var $LoginCloseBtn;

var $registerModal;
var $loginModal;

var $loginCommentBtn;

// var $editCommentForms;
// var $editCommentBtns;

// jquery
$(document).ready(function(){


//assign variables
$mainRegBtn = $('#main-reg-btn');
$mainLoginBtn = $('#main-login-btn');

$subRegBtn = $('#sub-reg-btn');
$subLoginBtn = $('#sub-login-btn');

$RegCloseBtn = $('#reg-close-btn');
$LoginCloseBtn = $('#login-close-btn');

$registerModal = $('#register');
$loginModal = $('#login');

$loginCommentBtn = $('#comment-login');

// $editCommentForms = $('.edit-comment-form');
// $editCommentBtns = $('button:contains("Edit Comment")');
// $closeCommentBtns = $('button:contains("Close")');

// create functions to toggle modals
var toggleRegisterModal = function (){
  $registerModal.toggle();
}

var toggleLoginModal = function (){
  $loginModal.toggle();
}

var toggleCommentEditor = function(){
  $editCommentForms.toggle();
}
 
// event listeners on modals
$mainRegBtn.on('click', toggleRegisterModal);
$mainLoginBtn.on('click', toggleLoginModal);

$subRegBtn.on('click', toggleRegisterModal);
$subLoginBtn.on('click', toggleLoginModal);

$RegCloseBtn.on('click', toggleRegisterModal);
$LoginCloseBtn.on('click', toggleLoginModal);

$loginCommentBtn.on('click', toggleLoginModal);

// $editCommentBtns.on('click', toggleCommentEditor);
// $closeCommentBtns.on('click', toggleCommentEditor);

});

















