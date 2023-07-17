const registerButton = document.getElementById("register");
const loginButton = document.getElementById("login");
const container = document.getElementById("container");

registerButton.addEventListener("click", () => {
  container.classList.add("right-panel-active");
});
loginButton.addEventListener("click", () => {
  container.classList.remove("right-panel-active");
});
const v1 = document.getElementById('video1');
const v2 = document.getElementById('video2');
const v3 = document.getElementById('video3');
gsap.to(v2, { autoAlpha: 1 });
const VideoTL = gsap.timeline({
  repeat: -1
});
VideoTL
  .to(v1, { autoAlpha: 1 })
  .set(v1, { display: 'none', opacity: 0, delay: 5 })
  .to(v2, { autoAlpha: 1 })
  .set(v2, { display: 'none', opacity: 0, delay: 5 })
  .to(v3, { autoAlpha: 1 })
  .set(v3, { display: 'none', opacity: 0, delay: 7 });

  



