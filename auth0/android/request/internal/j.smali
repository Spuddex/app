.class public final Lcom/auth0/android/request/internal/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm2/p;


# virtual methods
.method public final a(Lm2/q;Ljava/lang/reflect/Type;Lf2/f;)Ljava/lang/Object;
    .locals 9

    const-string v0, "Could not parse the JWK with ID "

    const-class v1, Lcom/auth0/android/request/internal/j;

    const-string v2, "typeOfT"

    invoke-static {p2, v2}, Lc3/h;->b0(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "context"

    invoke-static {p3, p2}, Lc3/h;->b0(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p2, p1, Lm2/t;

    if-eqz p2, :cond_3

    instance-of p2, p1, Lm2/s;

    if-nez p2, :cond_3

    invoke-virtual {p1}, Lm2/q;->a()Lm2/t;

    move-result-object p2

    iget-object p2, p2, Lm2/t;->b:Lo2/m;

    invoke-virtual {p2}, Lo2/m;->entrySet()Ljava/util/Set;

    move-result-object p2

    check-cast p2, Ljava/util/AbstractCollection;

    invoke-virtual {p2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p1}, Lm2/q;->a()Lm2/t;

    move-result-object p1

    iget-object p1, p1, Lm2/t;->b:Lo2/m;

    const-string v2, "keys"

    invoke-virtual {p1, v2}, Lo2/m;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lm2/o;

    iget-object p1, p1, Lm2/o;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lm2/q;

    invoke-virtual {v2}, Lm2/q;->a()Lm2/t;

    move-result-object v2

    const-string v3, "alg"

    invoke-virtual {v2, v3}, Lm2/t;->b(Ljava/lang/String;)Lm2/q;

    move-result-object v3

    const-class v4, Ljava/lang/String;

    invoke-virtual {p3, v3, v4}, Lf2/f;->a(Lm2/q;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, "use"

    invoke-virtual {v2, v5}, Lm2/t;->b(Ljava/lang/String;)Lm2/q;

    move-result-object v5

    invoke-virtual {p3, v5, v4}, Lf2/f;->a(Lm2/q;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "RS256"

    invoke-static {v6, v3}, Lc3/h;->I(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "sig"

    invoke-static {v3, v5}, Lc3/h;->I(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v3, "kty"

    invoke-virtual {v2, v3}, Lm2/t;->b(Ljava/lang/String;)Lm2/q;

    move-result-object v3

    invoke-virtual {p3, v3, v4}, Lf2/f;->a(Lm2/q;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v5, "kid"

    invoke-virtual {v2, v5}, Lm2/t;->b(Ljava/lang/String;)Lm2/q;

    move-result-object v5

    invoke-virtual {p3, v5, v4}, Lf2/f;->a(Lm2/q;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "n"

    invoke-virtual {v2, v6}, Lm2/t;->b(Ljava/lang/String;)Lm2/q;

    move-result-object v6

    invoke-virtual {p3, v6, v4}, Lf2/f;->a(Lm2/q;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "e"

    invoke-virtual {v2, v7}, Lm2/t;->b(Ljava/lang/String;)Lm2/q;

    move-result-object v2

    invoke-virtual {p3, v2, v4}, Lf2/f;->a(Lm2/q;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :try_start_0
    invoke-static {v3}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v3

    new-instance v4, Ljava/math/BigInteger;

    const/16 v7, 0xb

    invoke-static {v6, v7}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v6

    const/4 v8, 0x1

    invoke-direct {v4, v8, v6}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v6, Ljava/math/BigInteger;

    invoke-static {v2, v7}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-direct {v6, v8, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v2, Ljava/security/spec/RSAPublicKeySpec;

    invoke-direct {v2, v4, v6}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v3, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v2

    const-string v3, "keyId"

    invoke-static {v5, v3}, Lc3/h;->a0(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "pub"

    invoke-static {v2, v3}, Lc3/h;->a0(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_2

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :goto_2
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :cond_2
    invoke-static {p2}, La3/j;->Y2(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1

    :cond_3
    new-instance p1, Landroidx/fragment/app/p;

    const-string p2, "jwks json must be a valid and non-empty json object"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
