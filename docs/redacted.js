window.onload = function() {
	e = document.querySelector("body");
	e.innerHTML = e.innerHTML.replace(/([_■]{2,})/g, "<span class='redacted'>$1</span>");
	e.innerHTML = e.innerHTML.replace(/\<\/span\>\s*\<span class="redacted"\>/mg, " ");
	// e.innerHTML = e.innerHTML.replace(/(\[■.+\])/g, "<span class='redacted'>$1</span>");
}

