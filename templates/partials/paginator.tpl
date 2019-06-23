<ul class="pagination lv-pagination hidden-xs">
    <!-- IF pagination.pages -->
    <!-- IF !pagination.prev.active -->
    <li class="disabled">
        <a href="#" aria-label="Previous">
            <i class="fa fa-chevron-left"></i>
        </a>
    </li>
    <!-- ELSE -->
    <li>
        <a href="?{pagination.prev.qs}" data-page="{pagination.prev.page}" aria-label="Previous">
            <i class="fa fa-chevron-left"></i>
        </a>
    </li>
    <!-- ENDIF !pagination.prev.active -->
    <!-- ENDIF pagination.pages -->

    <!-- BEGIN pagination.pages -->
        <!-- IF pagination.pages.separator -->
		<li component="pagination/select-page" class="page select-page">
			<a href="#"><i class="fa fa-ellipsis-h"></i></a>
		</li>
		<!-- ELSE -->
        <li class="page<!-- IF pagination.pages.active --> active<!-- ENDIF pagination.pages.active -->" >
            <a href="?{pagination.pages.qs}" data-page="{pagination.pages.page}">{pagination.pages.page}</a>
        </li>
        <!-- ENDIF pagination.pages.separator -->
    <!-- END pagination.pages -->

    <!-- IF pagination.pages -->
    <!-- IF !pagination.next.active -->
    <li class="disabled">
        <a href="#" aria-label="Next">
            <i class="fa fa-chevron-right"></i>
        </a>
    </li>
    <!-- ELSE -->
    <li>
        <a href="?{pagination.next.qs}" data-page="{pagination.next.page}" aria-label="Next">
            <i class="fa fa-chevron-right"></i>
        </a>
    </li>
    <!-- ENDIF !pagination.next.active -->
    <!-- ENDIF pagination.pages -->
</ul>


<ul class="pagination lv-pagination visible-xs">
    <!-- IF pagination.pages -->
    <!-- IF !pagination.prev.active -->
    <li class="first disabled">
		<a href="#"><i class="fa fa-fast-backward"></i> </a>
	</li>
	<li class="disabled">
        <a href="#" aria-label="Previous">
            <i class="fa fa-chevron-left"></i>
        </a>
    </li>
	<!-- ENDIF !pagination.prev.active -->

	<!-- IF pagination.prev.active -->
	<li class="first">
		<a href="?{pagination.first.qs}" data-page="1"><i class="fa fa-fast-backward"></i> </a>
	</li>
	<li>
        <a href="?{pagination.prev.qs}" data-page="{pagination.prev.page}" aria-label="Previous">
            <i class="fa fa-chevron-left"></i>
        </a>
    </li>
	<!-- ENDIF pagination.prev.active -->
	<!-- ENDIF pagination.pages -->


    <li component="pagination/select-page" class="page select-page">
		<a href="#">{pagination.currentPage} / {pagination.pageCount}</a>
	</li>

    <!-- IF pagination.pages -->
    <!-- IF !pagination.next.active -->
    <li class="disabled">
        <a href="#" aria-label="Next">
            <i class="fa fa-chevron-right"></i>
        </a>
    </li>
    <li class="last disabled">
		<a href="#"><i class="fa fa-fast-forward"></i> </a>
	</li>
	<!-- ENDIF !pagination.next.active -->

	<!-- IF pagination.next.active -->
	<li>
        <a href="?{pagination.next.qs}" data-page="{pagination.next.page}" aria-label="Next">
            <i class="fa fa-chevron-right"></i>
        </a>
    </li>
	<li class="last">
		<a href="?{pagination.last.qs}" data-page="{pagination.pageCount}"><i class="fa fa-fast-forward"></i> </a>
	</li>
	<!-- ENDIF pagination.next.active -->
	<!-- ENDIF pagination.pages -->
</ul>