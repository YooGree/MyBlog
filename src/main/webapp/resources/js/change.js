function click1(logo) {
	alert(logo);
	var change = document.getElementById('changelogo').getValue();
	document.getElementById('logo').innerHTML = change;
}