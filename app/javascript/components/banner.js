import Typed from 'typed.js';
import swal from 'sweetalert';

function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["Cocktail's Bar", "Learn to drink"],
    typeSpeed: 50,
    loop: true
  });
}


function bindSweetAlertButtonDemo() {
  document.getElementById('sweet-alert-demo').addEventListener('click', () => {
    swal({
      title: "Delete a dose",
      text: "Are you sure ?  Very sure ?",
      icon: "success"
    })
  });
}

export { bindSweetAlertButtonDemo };
export { loadDynamicBannerText };
