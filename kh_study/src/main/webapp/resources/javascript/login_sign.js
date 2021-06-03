window.onload = function(){
    document.getElementById('modalToggle').addEventListener('click',function(){
        let modal = document.getElementsByClassName('modal')[0];
        modal.style.display = 'flex';
        let modalBox = document.getElementsByClassName('modalBox-login')[0];
        var setId = setTimeout(function(){
            modalBox.style.backgroundColor = 'rgba(255,255,255,1)';
            modalBox.style.top = '50%';
            modalBox.style.transform = 'translateY(-50%)';
        },100);
    });
    
}