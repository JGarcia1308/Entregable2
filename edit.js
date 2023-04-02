const btn = document.querySelector(".btn");
const crd = document.querySelector(".card-title");


btn.addEventListener("click", (event) => {
  event.preventDefault();
  //const pageId = link.getAttribute('href').substring(1)
  const pageUrl = `./edit.html`;
  const contentDiv = document.querySelector(".main-content");
  contentDiv.innerHTML = "";
  fetch(pageUrl)
    .then((response) => response.text())
    .then((html) => {
      const parser = new DOMParser();
      const page = parser.parseFromString(html, "text/html");
      console.log(page.querySelector("body").firstChild);
      contentDiv.appendChild(page.querySelector("body"));
    });
});




