
const initCursorJS = () => {
 $(document).mousemove(function(event) {
 $('.pointer').css({left:event.pageX, top:event.pageY});
})
}

export { initCursorJS };














// import $ from 'jquery';

// const initCursorJS = () => {
//   jQuery(document).ready(function() {

//   var mouseX = 0, mouseY = 0;
//   var xp = 0, yp = 0;

//   $(document).mousemove(function(e){
//     mouseX = e.pageX - 30;
//     mouseY = e.pageY - 30;
//   });

//   setInterval(function(){
//     xp += ((mouseX - xp)/6);
//     yp += ((mouseY - yp)/6);
//     $("#circle").css({left: xp +'px', top: yp +'px'});
//   }, 20);
// console.log('coucou')
// });
// }

// export { initCursorJS };
