(function () {
    $('.monitor').on('click', '.tabs a', function () {
        // 点击谁给谁加类名，其他去除类名
        $(this).addClass('active').siblings().removeClass('active');
        // 把对应的content显示，其他的隐藏
        let index = $(this).attr('data-index');
        // 显示
        $('.content').eq(index).show().siblings('.content').hide();

    });
    // 滚动复制一份
    // $('.monitor .marquee').each(function () {
    //     // 拿到了marquee里面的所有row
    //    let rows = $(this).children().clone();
    //     // 追加进去
    //     $(this).append(rows);
        // 父.append(子)==>子.appendTo(父)
    // });
})();