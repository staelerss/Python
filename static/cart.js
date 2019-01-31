const quantity = document.getElementById('amount');
buttons = document.getElementsByClassName('pl');
increment = function () {
    quantity.value = parseInt(quantity.value) + 1;
}
reduction = function () {
    quantity.value = parseInt(quantity.value) - 1;
}
Array.from(buttons).forEach((button) => {
    if (button.getElementsByClassName('fa-plus').length) {
        button.addEventListener('click', increment);
    }
    if (button.getElementsByClassName('fa-minus').length) {
        button.addEventListener('click', reduction);
    }
})