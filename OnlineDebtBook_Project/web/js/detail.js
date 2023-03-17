var btn = document.querySelectorAll('[name="btn_detail"]');
const urlParams = new URLSearchParams(window.location.search);
const customerId = urlParams.get('Customerid');
const numberInput = document.getElementById("numberInput");
const numberText = document.getElementById("numberText");
const numberInput1 = document.getElementById("numberInput1");
const numberText1 = document.getElementById("numberText1");
var datetimepicker = document.getElementById("datetimepicker");
var datetimepicker1 = document.getElementById("datetimepicker1");
var detailBtn = document.getElementsByName('Details_Btn');
var PlusBtn = document.getElementsByName('AddNewDebtPlus');
var MinusBtn = document.getElementsByName('AddNewDebtMinus');
var temp;
const now = new Date();
const formattedDate = now.getFullYear() + '-' + (now.getMonth() + 1).toString().padStart(2, '0') + '-' + now.getDate().toString().padStart(2, '0') + ' ' + now.getHours().toString().padStart(2, '0') + ':' + now.getMinutes().toString().padStart(2, '0');
var closeBtnAddNewDebt = document.getElementById('closeAddNewDebt');
var classifyMode = document.getElementById('classifyMode');
var classifyModeDetail = document.getElementById('classifyModeDetail');

$(function () {
    $("table").resizableColumns({
        store: window.store
    });
});

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
        let addBtn = document.createElement("input"); // Tạo thẻ button mới
        addBtn.className = "btn btn-success disabled";
        addBtn.style.width = "100%";
        addBtn.style.margin = "auto";
        addBtn.innerHTML = "+";
        addBtn.name = "classify";
        addBtn.value = "+";
        let removeBtn = document.createElement("input"); // Tạo thẻ button mới
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
        temp=id.textContent;
        classify === '+' ? classifyDetail = 'true' : classifyDetail = 'false';
        if (classifyModeDetail.lastChild) {
            classifyModeDetail.removeChild(classifyModeDetail.lastChild);
        }
        if (classifyDetail === 'true') {
            classifyModeDetail.appendChild(removeBtn);
        } else {
            classifyModeDetail.appendChild(addBtn);
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
        if(inputValue != 0){
             numberText.innerText = numToWords(inputValue);
        } else {
             numberText.innerText = "";
        }
    } 
});
numberInput1.addEventListener("input", (e) => {
    const value1 = e.target.value.replace(/,/g, ''); // Xóa các dấu ',' cũ
    const formattedValue = new Intl.NumberFormat('en-US').format(value1); // Định dạng lại số
    e.target.value = formattedValue; // Thêm dấu ',' vào số và gán lại giá trị cho input

    const inputValue = parseInt(value1);
    if (!isNaN(inputValue)) {
        if(inputValue != 0){
             numberText.innerText = numToWords(inputValue);
        } else {
             numberText.innerText = "";
        }
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
detailBtn.forEach(detailBtn => {
    detailBtn.addEventListener('click', (e) => {
        let addBtn = document.createElement("input"); // Tạo thẻ button mới
        addBtn.className = "btn btn-success disabled";
        addBtn.style.width = "100%";
        addBtn.style.margin = "auto";
        addBtn.innerHTML = "+";
        addBtn.name = "classify";
        let removeBtn = document.createElement("input"); // Tạo thẻ button mới
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
        if (classifyModeDetail.lastChild) {
            classifyModeDetail.removeChild(classifyModeDetail.lastChild);
        }
        if (classifyDetail === 'true') {
            classifyModeDetail.appendChild(removeBtn);
        } else {
            classifyModeDetail.appendChild(addBtn);
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
});
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
document.getElementById("SettlementBtn").addEventListener('click',()=>{
    alert('Settlement Debt ' + temp + ' Successfully');
});

PlusBtn[0].addEventListener('click', () => {
    let addBtn = document.createElement("input"); // Tạo thẻ button mới
    addBtn.className = "btn btn-success disabled";
    addBtn.style.width = "100%";
    addBtn.style.margin = "auto";
    addBtn.innerHTML = "+";
    addBtn.name = "classify";
    addBtn.value = "+";
    console.log(document.getElementById('addNewDebtForm'));
    if (classifyMode.lastChild) {
        classifyMode.removeChild(classifyMode.lastChild);
    }
    classifyMode.appendChild(addBtn);
});

MinusBtn[0].addEventListener('click', () => {
    let removeBtn = document.createElement("input"); // Tạo thẻ button mới
    removeBtn.className = "btn btn-danger disabled";
    removeBtn.style.width = "100%";
    removeBtn.style.margin = "auto";
    removeBtn.innerHTML = "-";
    removeBtn.name = "classify";
    removeBtn.value = "-";
    console.log(document.getElementById('addNewDebtForm'));
    if (classifyMode.lastChild) {
        classifyMode.removeChild(classifyMode.lastChild);
    }
    classifyMode.appendChild(removeBtn);
});
