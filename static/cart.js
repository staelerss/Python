const increment = (cart, idPosition) => {
    cart.positions[idPosition].amount += 1
    localStorage.setItem('cart', JSON.stringify(cart))
    render(cart)
}
const decrement = (cart, idPosition) => {
    cart.positions[idPosition].amount && (cart.positions[idPosition].amount -= 1)
    localStorage.setItem('cart', JSON.stringify(cart))
    render(cart)
}

const cart = JSON.parse(localStorage.getItem('cart'))
console.log(cart)

const arrayFromObject = (obj) => {
    return Object.keys(obj).map(key => obj[key])
}


function addTobasket(productId) {
    let cart = JSON.parse(localStorage.getItem('cart'))
    if (cart === null) {
        cart = {
            positions: {},
        }
    }

    cart.positions = {
        ...cart.positions,
        [productId]:
            getProductFromServer(productId),
    }
    console.log(cart)
    localStorage.setItem('cart',
        JSON.stringify(cart))
}

const getProductFromServer = (productId) => {
    return products[productId]
}

const buttons = document.getElementsByClassName('add-button')

Array.from(buttons).forEach(button => {
    button.addEventListener('click', (e) => {
        addTobasket(e.target.dataset.id);
    })
})
const generateCartTable = (cart) => {
    const trs = arrayFromObject(cart.positions).map(position => {
        position.sum = position.price * position.amount

        return `
        <tr class="cart-position" id="${position.id}">
            <td>${position.title}</td>
            <td class="price">${position.price}</td>
            <td>
                <button class="minus-button">-</button>
                <input type="text" value="${position.amount}" class="amount">
                <button class="plus-button">+</button>
            </td>
            <td class="sum">${position.sum}</td>
        </tr>
        `
    })


    const totalSum = arrayFromObject(cart.positions).reduce((sum, position) => sum + position.sum, 0)

    const totalTr = `
        <tr>
            <td colspan="3"></td>
            <td class="total">${totalSum}</td>
        </tr>`

    const table = document.createElement('table')
    table.innerHTML = trs + totalTr

    Array.from(table.querySelectorAll('button')).forEach(button => {
        const id = button.closest('.cart-position').id
        button.addEventListener('click', () => button.className === 'plus-button'
            ? increment(cart, id)
            : decrement(cart, id)
        )
    })

    return table;
}

const render = (cart) => {
    const cartDiv = document.getElementById('cart')
    const table = cartDiv.querySelector('table')
    table && cartDiv.removeChild(table)
    cartDiv.appendChild(generateCartTable(cart))
}

render(cart)



