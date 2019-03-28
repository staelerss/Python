const decrement = a => parseInt(a) ? a - 1 : 0;
const increment = a => parseInt(a) + 1;

const cartPositions = Array.from(document.querySelectorAll('.cart-position'));
console.log(cartPositions);
cartPositions.forEach((cartPosition) => {
    const price = parseInt(cartPosition.querySelector('.price').innerHTML);
    const amount = cartPosition.querySelector('.amount');

    const plusButton = cartPosition.querySelector('.plus-button');
    const minusButton = cartPosition.querySelector('.minus-button');

    const sum = cartPosition.querySelector('.sum');
    sum.innerHTML = parseInt(amount.value) * price;

    const total = cartPosition.querySelector('.total');
    let a = 0;
    console.log('table'.length);
    for (let i = 0; i < 'table'.length; i++) {
        a += parseInt(cartPosition.querySelector('.sum'));
    }
    // total.innerHTML = parseInt(cartPosition.querySelector('.sum');
    plusButton.addEventListener('click', () => {
        const amountValue = increment(amount.value);
        sum.innerHTML = amountValue * price;
        amount.value = amountValue;
    })

    minusButton.addEventListener('click', () => {
        const amountValue = decrement(amount.value);
        sum.innerHTML = amountValue * price;
        amount.value = amountValue;
    })
})

cart = localStorage.getItem('cart');
const buyButtons = document.querySelectorAll('.buyButton');
Array.from(buyButtons).forEach(buyButton => buyButton.addEventListener('click', (e) => {
    e.preventDefault();


}))

const cart = {
    deliveryPrice: 120,
    deliveryMethod: 'post',
    positions: [
        {id: 1, title: "Phone 2", price: 120, count: 2, sum: 0},
        {id: 3, title: "Phone 3", price: 120, count: 3, sum: 0},
        {id: 4, title: "Phone 4", price: 120, count: 1, sum: 0},
    ]
}

const renderCart = () => {
    const priceTd = document.createElement('td')
    priceTd.innerHTML = '100'

    const trs = cart.positions.map(position => {
        position.sum = position.price * position.amount

        return `<tr class="cart-position">
            <td>Name</td>
            <td class="price">${position.price}</td>
            <td>
                <button class="minus-button">-</button>
                <input type="text" value="${position.amount}" class="amount"
                <button class="plus-button">+</button>
            </td>
            <td class="sum">${position.sum}</td>
        </tr>`
    })

    const totalSum = cart.positions.redue((sum, position) => sum + position.sum, 0)

    const totalTr = `<tr>
                        <td colspan="3"></td>
                        <td class="total">0</td>
                    </tr>`

    return `<table>${trs}${totalTr}</table>`
}



