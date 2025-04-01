.class public final Lcom/auth0/android/request/internal/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lk1/f;

.field public final c:Lk1/e;

.field public final d:Lg1/a;

.field public final e:Lcom/auth0/android/request/internal/m;

.field public final f:Landroidx/activity/result/d;


# direct methods
.method public constructor <init>(Lk1/d;Ljava/lang/String;Lk1/f;Lcom/auth0/android/request/internal/e;Lg1/a;Lcom/auth0/android/request/internal/b;)V
    .locals 1

    const-string v0, "url"

    invoke-static {p2, v0}, Lc3/h;->b0(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorAdapter"

    invoke-static {p5, v0}, Lc3/h;->b0(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/auth0/android/request/internal/a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/auth0/android/request/internal/a;->b:Lk1/f;

    iput-object p4, p0, Lcom/auth0/android/request/internal/a;->c:Lk1/e;

    iput-object p5, p0, Lcom/auth0/android/request/internal/a;->d:Lg1/a;

    iput-object p6, p0, Lcom/auth0/android/request/internal/a;->e:Lcom/auth0/android/request/internal/m;

    new-instance p2, Landroidx/activity/result/d;

    invoke-direct {p2, p1}, Landroidx/activity/result/d;-><init>(Lk1/d;)V

    iput-object p2, p0, Lcom/auth0/android/request/internal/a;->f:Landroidx/activity/result/d;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lc3/h;->b0(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lc3/h;->b0(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/auth0/android/request/internal/a;->f:Landroidx/activity/result/d;

    iget-object v0, v0, Landroidx/activity/result/d;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final b(Ljava/util/Map;)V
    .locals 3

    invoke-static {p1}, La3/j;->a3(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v0

    const-string v1, "scope"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, La3/j;->U2(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lc3/h;->f1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p1, p0, Lcom/auth0/android/request/internal/a;->f:Landroidx/activity/result/d;

    iget-object p1, p1, Landroidx/activity/result/d;->d:Ljava/lang/Object;

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public final c()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/auth0/android/request/internal/a;->d:Lg1/a;

    :try_start_0
    iget-object v1, p0, Lcom/auth0/android/request/internal/a;->b:Lk1/f;

    iget-object v2, p0, Lcom/auth0/android/request/internal/a;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/auth0/android/request/internal/a;->f:Landroidx/activity/result/d;

    check-cast v1, Lk1/a;

    invoke-virtual {v1, v2, v3}, Lk1/a;->a(Ljava/lang/String;Landroidx/activity/result/d;)Lk1/g;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    new-instance v2, Ljava/io/InputStreamReader;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    iget-object v4, v1, Lk1/g;->b:Ljava/io/InputStream;

    invoke-direct {v2, v4, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    const/16 v3, 0xc8

    iget v4, v1, Lk1/g;->a:I

    if-gt v3, v4, :cond_0

    const/16 v3, 0x12c

    if-ge v4, v3, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/auth0/android/request/internal/a;->c:Lk1/e;

    check-cast v1, Lcom/auth0/android/request/internal/e;

    iget-object v1, v1, Lcom/auth0/android/request/internal/e;->a:Lm2/b0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lt2/b;

    invoke-direct {v3, v2}, Lt2/b;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v1, v3}, Lm2/b0;->b(Lt2/b;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    invoke-static {v2, v1}, Lc3/h;->k0(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lg1/a;->a(Ljava/lang/Exception;)Lg1/c;

    move-result-object v0

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    :try_start_3
    invoke-virtual {v1}, Lk1/g;->a()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v2}, Lg1/a;->b(Ljava/io/InputStreamReader;)Lg1/c;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {v2}, Lc3/h;->a2(Ljava/io/InputStreamReader;)Ljava/lang/String;

    move-result-object v3

    iget-object v1, v1, Lk1/g;->c:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v1}, Lg1/a;->c(Ljava/lang/String;Ljava/util/Map;)Lg1/c;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v1

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lg1/a;->a(Ljava/lang/Exception;)Lg1/c;

    move-result-object v0

    :goto_0
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_1
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {v2, v0}, Lc3/h;->k0(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lg1/a;->a(Ljava/lang/Exception;)Lg1/c;

    move-result-object v0

    throw v0
.end method

.method public final d(Li1/a;)V
    .locals 2

    new-instance v0, Le/j0;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1, p1}, Le/j0;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/auth0/android/request/internal/a;->e:Lcom/auth0/android/request/internal/m;

    invoke-interface {p1, v0}, Lcom/auth0/android/request/internal/m;->a(Ljava/lang/Runnable;)V

    return-void
.end method
