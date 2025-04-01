.class public final Lcom/auth0/android/request/internal/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm2/p;


# virtual methods
.method public final a(Lm2/q;Ljava/lang/reflect/Type;Lf2/f;)Ljava/lang/Object;
    .locals 12

    const-string v0, "typeOfT"

    invoke-static {p2, v0}, Lc3/h;->b0(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "context"

    invoke-static {p3, p2}, Lc3/h;->b0(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p2, p1, Lm2/t;

    if-eqz p2, :cond_1

    instance-of p2, p1, Lm2/s;

    if-nez p2, :cond_1

    invoke-virtual {p1}, Lm2/q;->a()Lm2/t;

    move-result-object p2

    iget-object p2, p2, Lm2/t;->b:Lo2/m;

    invoke-virtual {p2}, Lo2/m;->entrySet()Ljava/util/Set;

    move-result-object p2

    check-cast p2, Ljava/util/AbstractCollection;

    invoke-virtual {p2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p1}, Lm2/q;->a()Lm2/t;

    move-result-object p1

    const-string p2, "id_token"

    invoke-virtual {p1, p2}, Lm2/t;->c(Ljava/lang/String;)Lm2/q;

    move-result-object p2

    const-class v0, Ljava/lang/String;

    invoke-virtual {p3, p2, v0}, Lf2/f;->a(Lm2/q;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    const-string p2, "access_token"

    invoke-virtual {p1, p2}, Lm2/t;->c(Ljava/lang/String;)Lm2/q;

    move-result-object p2

    invoke-virtual {p3, p2, v0}, Lf2/f;->a(Lm2/q;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    const-string p2, "token_type"

    invoke-virtual {p1, p2}, Lm2/t;->c(Ljava/lang/String;)Lm2/q;

    move-result-object p2

    invoke-virtual {p3, p2, v0}, Lf2/f;->a(Lm2/q;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    move-object v4, p2

    check-cast v4, Ljava/lang/String;

    const-string p2, "refresh_token"

    invoke-virtual {p1, p2}, Lm2/t;->c(Ljava/lang/String;)Lm2/q;

    move-result-object p2

    invoke-virtual {p3, p2, v0}, Lf2/f;->a(Lm2/q;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    move-object v5, p2

    check-cast v5, Ljava/lang/String;

    const-string p2, "expires_in"

    invoke-virtual {p1, p2}, Lm2/t;->c(Ljava/lang/String;)Lm2/q;

    move-result-object p2

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {p3, p2, v1}, Lf2/f;->a(Lm2/q;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    const-string v1, "scope"

    invoke-virtual {p1, v1}, Lm2/t;->c(Ljava/lang/String;)Lm2/q;

    move-result-object v1

    invoke-virtual {p3, v1, v0}, Lf2/f;->a(Lm2/q;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Ljava/lang/String;

    const-string v1, "recovery_code"

    invoke-virtual {p1, v1}, Lm2/t;->c(Ljava/lang/String;)Lm2/q;

    move-result-object v1

    invoke-virtual {p3, v1, v0}, Lf2/f;->a(Lm2/q;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "expires_at"

    invoke-virtual {p1, v1}, Lm2/t;->c(Ljava/lang/String;)Lm2/q;

    move-result-object p1

    const-class v1, Ljava/util/Date;

    invoke-virtual {p3, p1, v1}, Lf2/f;->a(Lm2/q;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Date;

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    new-instance p1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    const/16 v1, 0x3e8

    int-to-long v10, v1

    mul-long/2addr p2, v10

    add-long/2addr p2, v8

    invoke-direct {p1, p2, p3}, Ljava/util/Date;-><init>(J)V

    :cond_0
    move-object v6, p1

    const-string p1, "idToken"

    invoke-static {v2, p1}, Lc3/h;->a0(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "accessToken"

    invoke-static {v3, p1}, Lc3/h;->a0(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "type"

    invoke-static {v4, p1}, Lc3/h;->a0(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "expiresAt"

    invoke-static {v6, p1}, Lc3/h;->a0(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/auth0/android/result/Credentials;

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lcom/auth0/android/result/Credentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/auth0/android/result/Credentials;->g(Ljava/lang/String;)V

    return-object p1

    :cond_1
    new-instance p1, Landroidx/fragment/app/p;

    const-string p2, "credentials json is not a valid json object"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
