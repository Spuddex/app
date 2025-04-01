.class public Lcom/auth0/android/provider/AuthenticationActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field public static final synthetic d:I


# instance fields
.field public b:Z

.field public c:Lj1/l;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Intent;)V
    .locals 1

    sget-object v0, Lj1/p0;->b:Lc3/h;

    if-nez v0, :cond_0

    sget-object p0, Lj1/p0;->a:Ljava/lang/String;

    const-string v0, "There is no previous instance of this provider."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    new-instance v0, Lj1/g;

    invoke-direct {v0, p0}, Lj1/g;-><init>(Landroid/content/Intent;)V

    sget-object p0, Lj1/p0;->b:Lc3/h;

    invoke-static {p0}, Lc3/h;->X(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lc3/h;->k2(Lj1/g;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    sput-object p0, Lj1/p0;->b:Lc3/h;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    if-nez p2, :cond_0

    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    :cond_0
    invoke-static {p3}, Lcom/auth0/android/provider/AuthenticationActivity;->a(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "com.auth0.android.EXTRA_INTENT_LAUNCHED"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/auth0/android/provider/AuthenticationActivity;->b:Z

    :cond_0
    return-void
.end method

.method public final onDestroy()V
    .locals 4

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/auth0/android/provider/AuthenticationActivity;->c:Lj1/l;

    if-eqz v0, :cond_3

    invoke-static {v0}, Lc3/h;->X(Ljava/lang/Object;)V

    const-string v1, "l"

    const-string v2, "Trying to unbind the service"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lj1/l;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-boolean v2, v0, Lj1/l;->h:Z

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lj1/l;->h:Z

    :cond_0
    iget-object v0, v0, Lj1/l;->f:Ll2/g;

    iget-boolean v1, v0, Ll2/g;->h:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, v0, Ll2/g;->e:Ll2/f;

    if-eqz v1, :cond_2

    iget-object v3, v0, Ll2/g;->a:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_2
    iput-object v2, v0, Ll2/g;->a:Landroid/content/Context;

    const/4 v1, 0x1

    iput-boolean v1, v0, Ll2/g;->h:Z

    :goto_0
    iput-object v2, p0, Lcom/auth0/android/provider/AuthenticationActivity;->c:Lj1/l;

    :cond_3
    return-void
.end method

.method public final onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public final onResume()V
    .locals 10

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-boolean v1, p0, Lcom/auth0/android/provider/AuthenticationActivity;->b:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/auth0/android/provider/AuthenticationActivity;->b:Z

    const/4 v2, 0x0

    if-nez v1, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/auth0/android/provider/AuthenticationActivity;->b:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lc3/h;->X(Ljava/lang/Object;)V

    const-string v1, "com.auth0.android.EXTRA_AUTHORIZE_URI"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/net/Uri;

    const-string v1, "com.auth0.android.EXTRA_CT_OPTIONS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-static {v1}, Lc3/h;->X(Ljava/lang/Object;)V

    check-cast v1, Lj1/m;

    const-string v3, "com.auth0.android.EXTRA_LAUNCH_AS_TWA"

    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    new-instance v0, Lj1/l;

    new-instance v2, Ll2/g;

    invoke-direct {v2, p0}, Ll2/g;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p0, v1, v2}, Lj1/l;-><init>(Landroid/content/Context;Lj1/m;Ll2/g;)V

    iput-object v0, p0, Lcom/auth0/android/provider/AuthenticationActivity;->c:Lj1/l;

    invoke-virtual {v0}, Lj1/l;->b()V

    iget-object v4, p0, Lcom/auth0/android/provider/AuthenticationActivity;->c:Lj1/l;

    invoke-static {v4}, Lc3/h;->X(Ljava/lang/Object;)V

    invoke-static {v7}, Lc3/h;->X(Ljava/lang/Object;)V

    sget-object v0, Lcom/auth0/android/request/internal/b;->b:Lj1/z;

    invoke-virtual {v0}, Lj1/z;->f()Lcom/auth0/android/request/internal/b;

    move-result-object v0

    new-instance v9, Lj1/f;

    invoke-direct {v9, p0}, Lj1/f;-><init>(Lcom/auth0/android/provider/AuthenticationActivity;)V

    iget-object v1, v4, Lj1/l;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/content/Context;

    if-nez v6, :cond_1

    const-string v0, "l"

    const-string v1, "Custom Tab Context was no longer valid."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    new-instance v1, Lj1/k;

    move-object v3, v1

    move-object v8, v0

    invoke-direct/range {v3 .. v9}, Lj1/k;-><init>(Lj1/l;ZLandroid/content/Context;Landroid/net/Uri;Lcom/auth0/android/request/internal/b;Lj1/f;)V

    iget-object v0, v0, Lcom/auth0/android/request/internal/b;->a:Lcom/auth0/android/request/internal/m;

    invoke-interface {v0, v1}, Lcom/auth0/android/request/internal/m;->a(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setResult(I)V

    :cond_3
    invoke-static {v0}, Lcom/auth0/android/provider/AuthenticationActivity;->a(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "outState"

    invoke-static {p1, v0}, Lc3/h;->b0(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "com.auth0.android.EXTRA_INTENT_LAUNCHED"

    iget-boolean v1, p0, Lcom/auth0/android/provider/AuthenticationActivity;->b:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
