const quantity = document.getElementById('amount');
const quantity2 = document.getElementById('amount2');
buttons = document.getElementsByClassName('pl');
buttons2 = document.getElementsByClassName('second');
increment = function () {
    quantity.value = parseInt(quantity.value) + 1;
}
reduction = function () {
    const number = parseInt(quantity.value);
    quantity.value = number != 0 ? number - 1 : 0;
}
increment2 = function () {
    quantity2.value = parseInt(quantity2.value) + 1;
}
reduction2 = function () {
    const number = parseInt(quantity2.value);
    quantity2.value = number != 0 ? number - 1 : 0;
}
Array.from(buttons).forEach((button) => {
    if (button.getElementsByClassName('fa-plus').length) {
        button.addEventListener('click', increment);
    }
    if (button.getElementsByClassName('fa-minus').length) {
        button.addEventListener('click', reduction);
    }
})
Array.from(buttons2).forEach((button) => {
    if (button.getElementsByClassName('pls').length) {
        button.addEventListener('click', increment2);
    }
    if (button.getElementsByClassName('mns').length) {
        button.addEventListener('click', reduction2);
    }
})