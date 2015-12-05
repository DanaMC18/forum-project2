
// name variables
var $mainRegBtn;
var $mainLoginBtn;

var $subRegBtn;
var $subLoginBtn;

var $RegCloseBtn;
var $LoginCloseBtn;

var $registerModal;
var $loginModal;

var $editCommentBtns;

var $editCommentDivs;

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

// $editCommentBtns = $('.edit-comment-btn');
// $closeCommentBtns = $('.close-comment-btn');

// $editCommentDivs = $('.edit-comment');


// create functions to toggle modals
var toggleRegisterModal = function (){
  $registerModal.toggle();
}

var toggleLoginModal = function (){
  $loginModal.toggle();
}

// var toggleEditCommentDiv = function (){
//   $editCommentDivs.toggle();
// }

// event listeners on modals
$mainRegBtn.on('click', toggleRegisterModal);
$mainLoginBtn.on('click', toggleLoginModal);

$subRegBtn.on('click', toggleRegisterModal);
$subLoginBtn.on('click', toggleLoginModal);

$RegCloseBtn.on('click', toggleRegisterModal);
$LoginCloseBtn.on('click', toggleLoginModal);

// $editCommentBtns.on('click', toggleEditCommentDiv);
// $closeCommentBtns.on('click', toggleEditCommentDiv);

});

















