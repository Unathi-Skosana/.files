/**
 * userChrome.js hacks
 */

 const readerModeObserver = new MutationObserver(() => {
   const isReaderModeActive = (document.querySelector('#reader-mode-button') && document.querySelector('#reader-mode-button').getAttribute('readeractive')) || 'false'

   document.querySelector('toolbox#navigator-toolbox').setAttribute('readeractive', isReaderModeActive)
 })

 readerModeObserver.observe(document.querySelector('#reader-mode-button'), {
   attributes: true,
   childList: false,
   subtree: false
 })
