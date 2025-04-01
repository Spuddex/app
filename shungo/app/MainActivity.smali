.class public final Lcom/shungo/app/MainActivity;
.super Le/l;
.source "SourceFile"


# static fields
.field public static final synthetic C:I


# instance fields
.field public A:Lh1/c;

.field public B:Z

.field public w:Landroid/webkit/WebView;

.field public x:Lf1/a;

.field public y:Ll1/a;

.field public z:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Le/l;-><init>()V

    return-void
.end method


# virtual methods
.method public final n()Ll1/a;
    .locals 1

    iget-object v0, p0, Lcom/shungo/app/MainActivity;->y:Ll1/a;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "user"

    invoke-static {v0}, Lc3/h;->B2(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final o(Lc3/e;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p1, Lu2/n;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lu2/n;

    iget v1, v0, Lu2/n;->g:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lu2/n;->g:I

    :goto_0
    move-object v5, v0

    goto :goto_1

    :cond_0
    new-instance v0, Lu2/n;

    invoke-direct {v0, p0, p1}, Lu2/n;-><init>(Lcom/shungo/app/MainActivity;Lc3/e;)V

    goto :goto_0

    :goto_1
    iget-object p1, v5, Lu2/n;->e:Ljava/lang/Object;

    sget-object v0, Ld3/a;->b:Ld3/a;

    iget v1, v5, Lu2/n;->g:I

    const/4 v7, 0x0

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    invoke-static {p1}, Lc3/h;->A2(Ljava/lang/Object;)V

    goto :goto_4

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lc3/h;->A2(Ljava/lang/Object;)V

    sget-object p1, Lw2/d;->a:Lt3/u;

    const-string p1, "/api/shungo/userInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "&userId="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/shungo/app/MainActivity;->n()Ll1/a;

    move-result-object v3

    iget-object v4, v3, Ll1/a;->b:Ljava/lang/String;

    if-eqz v4, :cond_3

    goto :goto_3

    :cond_3
    sget-object v4, La3/q;->b:La3/q;

    iget-object v3, v3, Ll1/a;->g:Ljava/util/Map;

    if-eqz v3, :cond_4

    invoke-static {v3}, La3/j;->Y2(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v6

    goto :goto_2

    :cond_4
    move-object v6, v4

    :goto_2
    const-string v8, "sub"

    invoke-interface {v6, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    if-eqz v3, :cond_5

    invoke-static {v3}, La3/j;->Y2(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    :cond_5
    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v4, v3

    goto :goto_3

    :cond_6
    move-object v4, v7

    :goto_3
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/16 v6, 0x18

    iput v2, v5, Lu2/n;->g:I

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lw2/d;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc3/e;I)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    return-object v0

    :cond_7
    :goto_4
    check-cast p1, Lw2/a;

    if-nez p1, :cond_8

    return-object v7

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fetch user profile: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Lw2/a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    iget-object p1, p1, Lw2/a;->a:Ljava/lang/String;

    return-object p1
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/fragment/app/u;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0b001c

    invoke-virtual {p0, p1}, Le/l;->setContentView(I)V

    new-instance p1, Lf1/a;

    const v0, 0x7f0f0032

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Lc3/h;->a0(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x7f0f0033

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lc3/h;->a0(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v0, v2}, Lf1/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/shungo/app/MainActivity;->x:Lf1/a;

    new-instance v0, Lg1/b;

    invoke-direct {v0, p1}, Lg1/b;-><init>(Lf1/a;)V

    new-instance p1, Lh1/c;

    new-instance v1, Lh1/e;

    invoke-direct {v1, p0}, Lh1/e;-><init>(Landroid/content/Context;)V

    invoke-direct {p1, v0, v1}, Lh1/c;-><init>(Lg1/b;Lh1/e;)V

    iput-object p1, p0, Lcom/shungo/app/MainActivity;->A:Lh1/c;

    const-string p1, "shungo"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v1, "getSharedPreferences(...)"

    invoke-static {p1, v1}, Lc3/h;->a0(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/shungo/app/MainActivity;->z:Landroid/content/SharedPreferences;

    const p1, 0x7f0801f4

    invoke-virtual {p0, p1}, Le/l;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v1, "findViewById(...)"

    invoke-static {p1, v1}, Lc3/h;->a0(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/webkit/WebView;

    iput-object p1, p0, Lcom/shungo/app/MainActivity;->w:Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/shungo/app/MainActivity;->p()Landroid/webkit/WebView;

    move-result-object p1

    new-instance v1, Lu2/o;

    invoke-direct {v1, p0}, Lu2/o;-><init>(Lcom/shungo/app/MainActivity;)V

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    invoke-virtual {p0}, Lcom/shungo/app/MainActivity;->p()Landroid/webkit/WebView;

    move-result-object p1

    new-instance v1, Lc;

    invoke-direct {v1, p0}, Lc;-><init>(Landroid/content/Context;)V

    const-string v2, "Android"

    invoke-virtual {p1, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/shungo/app/MainActivity;->p()Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {p0}, Lcom/shungo/app/MainActivity;->p()Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    invoke-virtual {p0}, Lcom/shungo/app/MainActivity;->p()Landroid/webkit/WebView;

    move-result-object p1

    new-instance v1, Lu2/m;

    invoke-direct {v1, p0, v0}, Lu2/m;-><init>(Lcom/shungo/app/MainActivity;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    const-string p1, "com.nianticlabs.pokemongo"

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "POGO not installed"

    const-string v0, "Pok\u00e9mon GO was not found on your device, please install"

    invoke-static {p0, p1, v0}, Lc3/h;->v2(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final p()Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/shungo/app/MainActivity;->w:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "webView"

    invoke-static {v0}, Lc3/h;->B2(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final q(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/shungo/app/MainActivity;->p()Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/shungo/app/MainActivity;->p()Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Lz1/l;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lz1/l;-><init>(Landroid/view/KeyEvent$Callback;ZI)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final r()V
    .locals 4

    new-instance v0, Lk3/k;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lg1/b;

    iget-object v2, p0, Lcom/shungo/app/MainActivity;->x:Lf1/a;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-direct {v1, v2}, Lg1/b;-><init>(Lf1/a;)V

    iput-object v1, v0, Lk3/k;->b:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/shungo/app/MainActivity;->p()Landroid/webkit/WebView;

    move-result-object v1

    const-string v2, "setLoading(true)"

    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    iget-object v1, p0, Lcom/shungo/app/MainActivity;->A:Lh1/c;

    if-eqz v1, :cond_0

    new-instance v2, Lj1/b0;

    const/4 v3, 0x3

    invoke-direct {v2, v0, v3, p0}, Lj1/b0;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    new-instance v0, Lh1/b;

    invoke-direct {v0, v1, v2}, Lh1/b;-><init>(Lh1/c;Li1/a;)V

    iget-object v1, v1, Lh1/c;->d:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const-string v0, "manager"

    invoke-static {v0}, Lc3/h;->B2(Ljava/lang/String;)V

    throw v3

    :cond_1
    const-string v0, "account"

    invoke-static {v0}, Lc3/h;->B2(Ljava/lang/String;)V

    throw v3
.end method
