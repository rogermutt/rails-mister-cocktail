const input = document.querySelector('.cocktail-finder-input');
const btn = document.querySelector('.cocktail-finder-btn');

const updateSearchBoxWidthOnClick =()=> {
  btn.addEventListener('click', ()=> input.classList.toggle('expanded'))
}

const submitSearcOnEnter =()=> {
  input.addEventListener('keydown', e => {
      if (e.keyCode == 13) {
        document.querySelector('.cocktail-finder-form').submit();
      }
  }, false);
}

export { updateSearchBoxWidthOnClick, submitSearcOnEnter };
