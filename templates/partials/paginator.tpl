<ul class="pagination lv-pagination hidden-xs">
    <li class="<!-- IF !pagination.prev.active --> disabled<!-- ENDIF !pagination.prev.active -->">
        <a href="<!-- IF pagination.prev.active -->?{pagination.prev.qs}<!-- ELSE -->#<!-- ENDIF pagination.prev.active -->" data-page="{pagination.prev.page}" aria-label="Previous">
            <i class="fa fa-chevron-left"></i>
        </a>
    </li>

    <!-- BEGIN pages -->
        <!-- IF pagination.pages.separator -->
		<li component="pagination/select-page" class="page select-page">
			<a href="#"><i class="fa fa-ellipsis-h"></i></a>
		</li>
		<!-- ELSE -->
        <li class="page<!-- IF pagination.pages.active --> active<!-- ENDIF pagination.pages.active -->" >
            <a href="?{pagination.pages.qs}" data-page="{pagination.pages.page}">{pagination.pages.page}</a>
        </li>
        <!-- ENDIF pagination.pages.separator -->
    <!-- END pages -->

    <li class="<!-- IF !pagination.next.active --> disabled<!-- ENDIF !pagination.next.active -->">
        <a href="<!-- IF pagination.next.active -->?{pagination.next.qs}<!-- ELSE -->#<!-- ENDIF pagination.next.active -->" data-page="{pagination.next.page}" aria-label="Next">
            <i class="fa fa-chevron-right"></i>
        </a>
    </li>
</ul>


<ul class="pagination lv-pagination visible-xs">
    <li class="<!-- IF !pagination.prev.active --> disabled<!-- ENDIF !pagination.prev.active -->">
        <a href="<!-- IF pagination.prev.active -->?{pagination.prev.qs}<!-- ELSE -->#<!-- ENDIF pagination.prev.active -->" data-page="{pagination.prev.page}" aria-label="Previous">
            <i class="fa fa-chevron-left"></i>
        </a>
    </li>
    
    <li component="pagination/select-page" class="page select-page">
		<a href="#">{pagination.currentPage} / {pagination.pageCount}</a>
	</li>
    
    <li class="<!-- IF !pagination.next.active --> disabled<!-- ENDIF !pagination.next.active -->">
        <a href="<!-- IF pagination.next.active -->?{pagination.next.qs}<!-- ELSE -->#<!-- ENDIF pagination.next.active -->" data-page="{pagination.next.page}" aria-label="Next">
            <i class="fa fa-chevron-right"></i>
        </a>
    </li>
</ul>