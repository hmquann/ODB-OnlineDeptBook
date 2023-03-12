var btn = document.querySelectorAll('[name="btn_detail"]');
const urlParams = new URLSearchParams(window.location.search);
const customerId = urlParams.get('Customerid');
const numberInput = document.getElementById("numberInput");
const numberText = document.getElementById("numberText");
const numberInput1 = document.getElementById("numberInput1");
const numberText1 = document.getElementById("numberText1");
var datetimepicker = document.getElementById("datetimepicker");
var datetimepicker1 = document.getElementById("datetimepicker1");
var detailBtn = document.getElementById('Details_Btn');
const now = new Date();
const formattedDate = now.getFullYear() + '-' + (now.getMonth() + 1).toString().padStart(2, '0') + '-' + now.getDate().toString().padStart(2, '0') + ' ' + now.getHours().toString().padStart(2, '0') + ':' + now.getMinutes().toString().padStart(2, '0');
var closeBtnAddNewDebt = document.getElementById('closeAddNewDebt');
var classifyMode = document.getElementById('classifyMode');
flatpickr(datetimepicker, {
    enableTime: true,
    dateFormat: "Y-m-d H:i",
    time_24hr: true,
    defaultDate: new Date()
});
datetimepicker.value = formattedDate;
datetimepicker.placeholder = formattedDate;
closeBtnAddNewDebt.addEventListener('click', () => {
    datetimepicker.value = formattedDate;
    datetimepicker.placeholder = formattedDate;
});
flatpickr(datetimepicker1, {
    enableTime: true,
    dateFormat: "Y-m-d H:i",
    time_24hr: true,
    defaultDate: new Date()
});
datetimepicker1.value = formattedDate;
datetimepicker1.placeholder = formattedDate;
closeBtnAddNewDebt.addEventListener('click', () => {
    datetimepicker1.value = formattedDate;
    datetimepicker1.placeholder = formattedDate;
});
btn.forEach(button => {
    button.addEventListener('click', () => {
        let addBtn = document.createElement("button"); // Tạo thẻ button mới
        addBtn.className = "btn btn-success disabled";
        addBtn.style.width = "100%";
        addBtn.style.margin = "auto";
        addBtn.innerHTML = "+";
        addBtn.name = "classify";
        addBtn.value = "+";
        let removeBtn = document.createElement("button"); // Tạo thẻ button mới
        removeBtn.className = "btn btn-danger disabled";
        removeBtn.style.width = "100%";
        removeBtn.style.margin = "auto";
        removeBtn.innerHTML = "-";
        removeBtn.name = "classify";
        removeBtn.value = "-";
        let classifyDetail;
        // Lấy phần tử có class là "classify" trong cùng một hàng
        const row = button.closest('tr');
        const classify = row.querySelector('td:nth-child(3)').textContent;
        const money = row.querySelector('td:nth-child(4)');
        const id = row.querySelector('td:nth-child(1)');
        classify === '+' ? classifyDetail = 'true' : classifyDetail = 'false';
        if (classifyMode.lastChild) {
            classifyMode.removeChild(classifyMode.lastChild);
        }
        if (classifyDetail === 'true') {
            classifyMode.appendChild(removeBtn);
        } else {
            classifyMode.appendChild(addBtn);
        }
        console.log(money.textContent);
        numberInput1.value = money.textContent;
        let noteElement = document.getElementsByName('note');
        noteElement[0].value = 'Debt Settlement For The Debt Note ' + id.textContent;
    });

});
numberInput.addEventListener("input", (e) => {
    const value1 = e.target.value.replace(/,/g, ''); // Xóa các dấu ',' cũ
    const formattedValue = new Intl.NumberFormat('en-US').format(value1); // Định dạng lại số
    e.target.value = formattedValue; // Thêm dấu ',' vào số và gán lại giá trị cho input

    const inputValue = parseInt(value1);
    if (!isNaN(inputValue)) {
        numberText.innerText = numToWords(inputValue);
    } else {
        numberText.innerText = "Nah";
    }
});
numberInput1.addEventListener("input", (e) => {
    const value1 = e.target.value.replace(/,/g, ''); // Xóa các dấu ',' cũ
    const formattedValue = new Intl.NumberFormat('en-US').format(value1); // Định dạng lại số
    e.target.value = formattedValue; // Thêm dấu ',' vào số và gán lại giá trị cho input

    const inputValue = parseInt(value1);
    if (!isNaN(inputValue)) {
        numberText1.innerText = numToWords(inputValue);
    } else {
        numberText1.innerText = "Nah";
    }
});
function validateNumberInput(event) {
    const keyCode = event.keyCode || event.which;
    const allowedKeys = /[0-9]/;
    console.log(keyCode);
    const isValidKey = allowedKeys.test(String.fromCharCode(keyCode));
    return isValidKey;
}
;
document.querySelectorAll('button[data-target="#new_debt"]').forEach(button => {
    button.addEventListener('click', () => {
        const form = document.getElementById('addNewDebtForm');
        const newDiv = document.getElementById('addNewDebtFormCustomerId');
        newDiv.textContent = customerId;
        newDiv.value = customerId;
    });
});
detailBtn.addEventListener('click', (e) => {
    let addBtn = document.createElement("button"); // Tạo thẻ button mới
    addBtn.className = "btn btn-success disabled";
    addBtn.style.width = "100%";
    addBtn.style.margin = "auto";
    addBtn.innerHTML = "+";
    addBtn.name = "classify";
    let removeBtn = document.createElement("button"); // Tạo thẻ button mới
    removeBtn.className = "btn btn-danger disabled";
    removeBtn.style.width = "100%";
    removeBtn.style.margin = "auto";
    removeBtn.innerHTML = "-";
    removeBtn.name = "classify";
    let classifyDetail;
    // Lấy phần tử có class là "classify" trong cùng một hàng
    const row = detailBtn.closest('tr');

    const money = row.querySelector('td:nth-child(4)');
    const classify = row.querySelector('td:nth-child(3)').textContent;
    const note = row.querySelector('td:nth-child(2)');
    const id = row.querySelector('td:nth-child(1)');

    console.log(classify);
    classify === '+' ? classifyDetail = 'false' : classifyDetail = 'true';
    if (classifyMode.lastChild) {
        classifyMode.removeChild(classifyMode.lastChild);
    }
    if (classifyDetail === 'true') {
        classifyMode.appendChild(removeBtn);
    } else {
        classifyMode.appendChild(addBtn);
    }
    document.getElementById("datetimepicker1").disabled = true;
    document.getElementById("numberInput1").disabled = true;
    document.getElementById("noteSettlement").disabled = true;
    document.getElementById("SettlementBtn").style.display = "none";
    numberInput1.value = money.textContent;
    let noteElement = document.getElementsByName('note');
    noteElement[0].value = note.textContent;
}
);
document.getElementById('closeSettlement').addEventListener('click', () => {
    document.getElementById("datetimepicker1").removeAttribute("disabled");
    document.getElementById("numberInput1").removeAttribute("disabled");
    document.getElementById("noteSettlement").removeAttribute("disabled");
    document.getElementById("SettlementBtn").style.display = "";
}
);
document.querySelectorAll('button[data-target="#debtSettlement"]').forEach(button => {
    button.addEventListener('click', () => {
        const newDiv = document.getElementById('SettlementDebtByCustomerId');
        newDiv.textContent = customerId;
        newDiv.value = customerId;
        console.log(document.getElementById('SettlementDebtForm'));
    });
});