.class public abstract Lcom/auth0/android/request/internal/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lm2/m;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/reflect/Type;

    const-class v2, Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-class v4, Ljava/security/PublicKey;

    aput-object v4, v1, v2

    const-class v2, Ljava/util/Map;

    invoke-static {v2, v1}, Lcom/google/gson/reflect/TypeToken;->getParameterized(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    new-instance v2, Lm2/n;

    invoke-direct {v2}, Lm2/n;-><init>()V

    new-instance v4, Lcom/auth0/android/request/internal/i;

    invoke-direct {v4, v3}, Lcom/auth0/android/request/internal/i;-><init>(I)V

    iget-object v5, v2, Lm2/n;->e:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/auth0/android/request/internal/n;

    invoke-direct {v4}, Lcom/auth0/android/request/internal/n;-><init>()V

    const-class v6, Ll1/a;

    invoke-virtual {v2, v4, v6}, Lm2/n;->a(Lm2/p;Ljava/lang/reflect/Type;)V

    new-instance v4, Lcom/auth0/android/request/internal/c;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    const-class v6, Lcom/auth0/android/result/Credentials;

    invoke-virtual {v2, v4, v6}, Lm2/n;->a(Lm2/p;Ljava/lang/reflect/Type;)V

    new-instance v4, Lcom/auth0/android/request/internal/j;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v2, v4, v1}, Lm2/n;->a(Lm2/p;Ljava/lang/reflect/Type;)V

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    iput-object v1, v2, Lm2/n;->g:Ljava/lang/String;

    new-instance v12, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget-object v6, v2, Lm2/n;->f:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/2addr v7, v4

    add-int/lit8 v7, v7, 0x3

    invoke-direct {v12, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {v12}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v4}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v4, v2, Lm2/n;->g:Ljava/lang/String;

    sget-boolean v5, Ls2/e;->a:Z

    sget-object v6, Lp2/e;->b:Lp2/d;

    const-class v7, Ljava/util/Date;

    const/4 v8, 0x0

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1

    new-instance v0, Lcom/auth0/android/request/internal/h;

    invoke-direct {v0, v6, v4, v3}, Lcom/auth0/android/request/internal/h;-><init>(Lp2/e;Ljava/lang/String;I)V

    invoke-static {v7, v0}, Lp2/x;->a(Ljava/lang/Class;Lm2/b0;)Lp2/u;

    move-result-object v0

    if-eqz v5, :cond_0

    sget-object v6, Ls2/e;->c:Ls2/d;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Lcom/auth0/android/request/internal/h;

    invoke-direct {v7, v6, v4, v3}, Lcom/auth0/android/request/internal/h;-><init>(Lp2/e;Ljava/lang/String;I)V

    iget-object v6, v6, Lp2/e;->a:Ljava/lang/Class;

    invoke-static {v6, v7}, Lp2/x;->a(Ljava/lang/Class;Lm2/b0;)Lp2/u;

    move-result-object v8

    sget-object v6, Ls2/e;->b:Ls2/d;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Lcom/auth0/android/request/internal/h;

    invoke-direct {v7, v6, v4, v3}, Lcom/auth0/android/request/internal/h;-><init>(Lp2/e;Ljava/lang/String;I)V

    iget-object v3, v6, Lp2/e;->a:Ljava/lang/Class;

    invoke-static {v3, v7}, Lp2/x;->a(Ljava/lang/Class;Lm2/b0;)Lp2/u;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v8

    goto :goto_0

    :cond_1
    iget v4, v2, Lm2/n;->h:I

    if-eq v4, v0, :cond_2

    iget v9, v2, Lm2/n;->i:I

    if-eq v9, v0, :cond_2

    new-instance v0, Lcom/auth0/android/request/internal/h;

    invoke-direct {v0, v6, v4, v9, v3}, Lcom/auth0/android/request/internal/h;-><init>(Lp2/e;III)V

    invoke-static {v7, v0}, Lp2/x;->a(Ljava/lang/Class;Lm2/b0;)Lp2/u;

    move-result-object v0

    if-eqz v5, :cond_0

    sget-object v6, Ls2/e;->c:Ls2/d;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Lcom/auth0/android/request/internal/h;

    invoke-direct {v7, v6, v4, v9, v3}, Lcom/auth0/android/request/internal/h;-><init>(Lp2/e;III)V

    iget-object v6, v6, Lp2/e;->a:Ljava/lang/Class;

    invoke-static {v6, v7}, Lp2/x;->a(Ljava/lang/Class;Lm2/b0;)Lp2/u;

    move-result-object v8

    sget-object v6, Ls2/e;->b:Ls2/d;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Lcom/auth0/android/request/internal/h;

    invoke-direct {v7, v6, v4, v9, v3}, Lcom/auth0/android/request/internal/h;-><init>(Lp2/e;III)V

    iget-object v3, v6, Lp2/e;->a:Ljava/lang/Class;

    invoke-static {v3, v7}, Lp2/x;->a(Ljava/lang/Class;Lm2/b0;)Lp2/u;

    move-result-object v3

    :goto_0
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v5, :cond_2

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    new-instance v0, Lm2/m;

    iget-object v7, v2, Lm2/n;->a:Lo2/f;

    iget-object v8, v2, Lm2/n;->c:Lm2/a;

    iget-object v9, v2, Lm2/n;->d:Ljava/util/HashMap;

    iget-boolean v10, v2, Lm2/n;->j:Z

    iget v11, v2, Lm2/n;->b:I

    iget-object v13, v2, Lm2/n;->k:Lm2/v;

    iget-object v14, v2, Lm2/n;->l:Lm2/w;

    move-object v6, v0

    invoke-direct/range {v6 .. v14}, Lm2/m;-><init>(Lo2/f;Lm2/a;Ljava/util/Map;ZILjava/util/List;Lm2/v;Lm2/w;)V

    sput-object v0, Lcom/auth0/android/request/internal/f;->a:Lm2/m;

    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-void
.end method
