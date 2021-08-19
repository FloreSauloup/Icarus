const computeTotalPrice = (start_date_input, end_date_input) => {
  if (start_date_input.value != "" && end_date_input.value != "" ) {
    const price_per_day = document.getElementById('total-price')

    const start_date = new Date(start_date_input.value);
    const end_date = new Date(end_date_input.value);
    const days = (end_date - start_date) / 86400000;
    const pricePerDay = Number.parseInt(price_per_day.dataset.pricePerDay, 10);
    const totalPrice = pricePerDay * days;
    price_per_day.innerHTML = `Total : $ ${totalPrice}`;
  };
};

const initTotalPrice = () => {
  const start_date_input = document.getElementById('renting_start_date')
  const end_date_input = document.getElementById('renting_end_date')

  if (start_date_input && end_date_input) {
    start_date_input.addEventListener('change', () => computeTotalPrice(start_date_input, end_date_input));
    end_date_input.addEventListener('change', () => computeTotalPrice(start_date_input, end_date_input));
  }
}

export { initTotalPrice };
