
// ==========  animation cards ============
const cards = document.querySelectorAll('.carte-meilleur-plat');
const TL = gsap.timeline({
    defaults: {
        stagger: 0.5
    }
});
TL
  .fromTo(cards, {
    autoAlpha: 0,
    x: -50,
    duration: 1
  }, {
    autoAlpha: 1,
    x: 0
  });

ScrollTrigger.create({
  animation: TL,
  trigger: ".card-container",
  // markers: true,
  start: "top 50%",
  end: "bottom-=60% 40%",
  toggleActions: "play none reverse none",
  scrub: true
});
// ==========  fin animation cards ============




// ==========  animation cards ============ //
const avion = document.querySelector('.avion')
const logoAnim = gsap.timeline({})

window.addEventListener("load", function() {
    logoAnim
    .to(avion, {
        x: '180px',
        scale: 2,
        ease: 'power1',
        duration: 1,
        // delay: 1
    })
    .to(".small-line", {
        width: '185px',
        // delay: 1
    }, 0)
    .to('')
});
// ==========  end animation cards ============ //


const texte1 = document.querySelector('.texte1')
const imgContainer1 = document.querySelectorAll('.img-container1 img') 
const imgContainer2 = document.querySelectorAll('.img-container2 img')
const imgContainer3 = document.querySelectorAll('.img-container3 img')
const texte2 = document.querySelector('.texte2')
const tf1 = document.querySelector('.title-fade1') 
const tf2 = document.querySelector('.title-fade2') 
const tf3 = document.querySelector('.title-fade3') 

// imgContainer1.style.display = 'none'
const texteAnimation = gsap.timeline({})

texteAnimation
  .to(texte1, {x: 0, ease: "power2"})
  .to(imgContainer1 , {x: 0, ease: "power2", stagger: 0.2})
  .to(tf1, {autoAlpha: 1, x: 0, stagger: 0.2}, '-=0.25')
  .to(imgContainer2 , {x: 0, ease: "power2", stagger: 0.2 })
  .to(tf2, {autoAlpha: 1, x: 0, stagger: 0.2}, '-=0.25')
  .to(imgContainer3 , {x: 0, ease: "power2", stagger: 0.2})
  .to(tf3, {autoAlpha: 1, x: 0, stagger: 0.2}, '-=0.25')
  .to(texte2, {x: 0, ease: "power2"});
  

ScrollTrigger.create({
  animation: texteAnimation,
  trigger: ".animation-phrases",
  // markers: true,
  start: "-250px 50%",
  end: "75% top",
  scrub: true
});






