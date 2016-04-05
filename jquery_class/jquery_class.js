$('.federalist').css({ backgroundColor: 'red', color: 'black', fontWeight: 'bold' });
​
$('.whig').css({backgroundColor: 'purple', color:'white'})
​
// Add the class of yellow to the siblings of the parent (td, in this case) of an unchecked checkbox.
$("input[type=checkbox]:not(:checked)").parent().siblings().addClass("yellow")
​
$(".died .term").append("<span class='died'>(Died)</span>")
$("<span class='died'>(Died)</span>").appendTo(".died .term")
​
turnParentRed = function(){
  $(this).parent().addClass("red")
  $(this).off('click', turnParentRed)
  $(this).on('click', turnParentNotRed)
}
​
turnParentNotRed = function(){
  $(this).parent().removeClass("red")
  $(this).off('click', turnNotParentRed)
  $(this).on('click', turnParentRed)
}
​
$("input[type=checkbox]").on('click', turnParentRed)
​
$("input[type=checkbox]").toggle(turnParentRed, turnParentNotRed)
