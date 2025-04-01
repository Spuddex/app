.class public final Lcom/auth0/android/request/internal/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm2/p;


# instance fields
.field public final a:Lm2/m;


# direct methods
.method public constructor <init>()V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v9, Lm2/m;

    sget-object v1, Lo2/f;->d:Lo2/f;

    sget-object v2, Lm2/g;->b:Lm2/a;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    sget-object v7, Lm2/z;->b:Lm2/v;

    sget-object v8, Lm2/z;->c:Lm2/w;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lm2/m;-><init>(Lo2/f;Lm2/a;Ljava/util/Map;ZILjava/util/List;Lm2/v;Lm2/w;)V

    iput-object v9, p0, Lcom/auth0/android/request/internal/n;->a:Lm2/m;

    return-void
.end method


# virtual methods
.method public final a(Lm2/q;Ljava/lang/reflect/Type;Lf2/f;)Ljava/lang/Object;
    .locals 9

    instance-of p2, p1, Lm2/t;

    if-eqz p2, :cond_a

    instance-of p2, p1, Lm2/s;

    if-nez p2, :cond_a

    invoke-virtual {p1}, Lm2/q;->a()Lm2/t;

    move-result-object p2

    iget-object p2, p2, Lm2/t;->b:Lo2/m;

    invoke-virtual {p2}, Lo2/m;->entrySet()Ljava/util/Set;

    move-result-object p2

    check-cast p2, Ljava/util/AbstractCollection;

    invoke-virtual {p2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_a

    invoke-virtual {p1}, Lm2/q;->a()Lm2/t;

    move-result-object p1

    const-string p2, "user_id"

    invoke-virtual {p1, p2}, Lm2/t;->c(Ljava/lang/String;)Lm2/q;

    move-result-object p2

    const-class v0, Ljava/lang/String;

    invoke-virtual {p3, p2, v0}, Lf2/f;->a(Lm2/q;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    const-string p2, "name"

    invoke-virtual {p1, p2}, Lm2/t;->c(Ljava/lang/String;)Lm2/q;

    move-result-object p2

    invoke-virtual {p3, p2, v0}, Lf2/f;->a(Lm2/q;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    const-string p2, "nickname"

    invoke-virtual {p1, p2}, Lm2/t;->c(Ljava/lang/String;)Lm2/q;

    move-result-object p2

    invoke-virtual {p3, p2, v0}, Lf2/f;->a(Lm2/q;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    move-object v4, p2

    check-cast v4, Ljava/lang/String;

    const-string p2, "picture"

    invoke-virtual {p1, p2}, Lm2/t;->c(Ljava/lang/String;)Lm2/q;

    move-result-object p2

    invoke-virtual {p3, p2, v0}, Lf2/f;->a(Lm2/q;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    move-object v5, p2

    check-cast v5, Ljava/lang/String;

    const-string p2, "email"

    invoke-virtual {p1, p2}, Lm2/t;->c(Ljava/lang/String;)Lm2/q;

    move-result-object p2

    invoke-virtual {p3, p2, v0}, Lf2/f;->a(Lm2/q;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    move-object v6, p2

    check-cast v6, Ljava/lang/String;

    const-string p2, "given_name"

    invoke-virtual {p1, p2}, Lm2/t;->c(Ljava/lang/String;)Lm2/q;

    move-result-object p2

    invoke-virtual {p3, p2, v0}, Lf2/f;->a(Lm2/q;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    move-object v8, p2

    check-cast v8, Ljava/lang/String;

    const-string p2, "family_name"

    invoke-virtual {p1, p2}, Lm2/t;->c(Ljava/lang/String;)Lm2/q;

    move-result-object p2

    invoke-virtual {p3, p2, v0}, Lf2/f;->a(Lm2/q;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget-object p2, p1, Lm2/t;->b:Lo2/m;

    const-string v0, "email_verified"

    invoke-virtual {p2, v0}, Lo2/m;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    const-class v1, Ljava/lang/Boolean;

    if-eqz p2, :cond_0

    invoke-virtual {p1, v0}, Lm2/t;->c(Ljava/lang/String;)Lm2/q;

    move-result-object p2

    invoke-virtual {p3, p2, v1}, Lf2/f;->a(Lm2/q;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    :cond_0
    const-string p2, "created_at"

    invoke-virtual {p1, p2}, Lm2/t;->c(Ljava/lang/String;)Lm2/q;

    move-result-object p2

    iget-object v0, p0, Lcom/auth0/android/request/internal/n;->a:Lm2/m;

    const-class v7, Ljava/util/Date;

    invoke-virtual {v0, p2, v7}, Lm2/m;->b(Lm2/q;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v7, v0, :cond_1

    const-class v1, Ljava/lang/Integer;

    goto :goto_0

    :cond_1
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v7, v0, :cond_2

    const-class v1, Ljava/lang/Float;

    goto :goto_0

    :cond_2
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v7, v0, :cond_3

    const-class v1, Ljava/lang/Byte;

    goto :goto_0

    :cond_3
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v7, v0, :cond_4

    const-class v1, Ljava/lang/Double;

    goto :goto_0

    :cond_4
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v7, v0, :cond_5

    const-class v1, Ljava/lang/Long;

    goto :goto_0

    :cond_5
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v7, v0, :cond_6

    const-class v1, Ljava/lang/Character;

    goto :goto_0

    :cond_6
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v7, v0, :cond_7

    goto :goto_0

    :cond_7
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v7, v0, :cond_8

    const-class v1, Ljava/lang/Short;

    goto :goto_0

    :cond_8
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v7, v0, :cond_9

    const-class v1, Ljava/lang/Void;

    goto :goto_0

    :cond_9
    move-object v1, v7

    :goto_0
    invoke-virtual {v1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Date;

    new-instance p2, Lcom/auth0/android/request/internal/UserProfileDeserializer$1;

    invoke-direct {p2}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object p2

    const-string v0, "identities"

    invoke-virtual {p1, v0}, Lm2/t;->c(Ljava/lang/String;)Lm2/q;

    move-result-object v0

    invoke-virtual {p3, v0, p2}, Lf2/f;->a(Lm2/q;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    new-instance p2, Lcom/auth0/android/request/internal/UserProfileDeserializer$2;

    invoke-direct {p2}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object p2

    const-string v0, "user_metadata"

    invoke-virtual {p1, v0}, Lm2/t;->c(Ljava/lang/String;)Lm2/q;

    move-result-object v0

    invoke-virtual {p3, v0, p2}, Lf2/f;->a(Lm2/q;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v0, "app_metadata"

    invoke-virtual {p1, v0}, Lm2/t;->c(Ljava/lang/String;)Lm2/q;

    move-result-object v0

    invoke-virtual {p3, v0, p2}, Lf2/f;->a(Lm2/q;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-virtual {p3, p1, p2}, Lf2/f;->a(Lm2/q;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    move-object v7, p1

    check-cast v7, Ljava/util/Map;

    new-instance p1, Ll1/a;

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Ll1/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    return-object p1

    :cond_a
    new-instance p1, Landroidx/fragment/app/p;

    const-string p2, "user profile json is not a valid json object"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
