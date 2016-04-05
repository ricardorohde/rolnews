<script language='JavaScript'>
    function bloquear() {
        return false;
    };
    function desbloquear() {
        return true;
    };
    document.onselectstart = new Function("return false");
    if (window.sidebar) {
        document.onmousedown = bloquear;
        document.onclick = desbloquear;
    }
</script>
