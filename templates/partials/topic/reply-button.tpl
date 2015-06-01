<li class="reply-button">
<button component="topic/reply" class="btn btn-md btn-primary <!-- IF !privileges.topics:reply -->hidden<!-- ENDIF !privileges.topics:reply -->">[[topic:reply]]</button>

<!-- IF loggedIn -->

<!-- IF !privileges.topics:reply -->
<!-- IF locked -->
<button component="topic/reply/locked" class="btn btn-md btn-primary" disabled><i class="fa fa-lock"></i> [[topic:locked]]</button>
<!-- ENDIF locked -->
<!-- ENDIF !privileges.topics:reply -->

<!-- IF !locked -->
<button component="topic/reply/locked" class="btn btn-md btn-primary hidden" disabled><i class="fa fa-lock"></i> [[topic:locked]]</button>
<!-- ENDIF !locked -->

<!-- ELSE -->

<!-- IF !privileges.topics:reply -->
<button href="/login?next=topic/{slug}" class="btn btn-md btn-primary">[[topic:guest-login-reply]]</button>
<!-- ENDIF !privileges.topics:reply -->

<!-- ENDIF loggedIn -->
</li>