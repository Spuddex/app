.class public final Lcom/auth0/android/request/internal/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm2/c0;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/auth0/android/request/internal/i;->b:I

    return-void
.end method


# virtual methods
.method public final a(Lm2/m;Lcom/google/gson/reflect/TypeToken;)Lm2/b0;
    .locals 3

    iget v0, p0, Lcom/auth0/android/request/internal/i;->b:I

    const-class v1, Ljava/util/Date;

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object p2

    const-class v0, Ljava/sql/Timestamp;

    if-ne p2, v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/Class;)Lcom/google/gson/reflect/TypeToken;

    move-result-object p2

    invoke-virtual {p1, p2}, Lm2/m;->c(Lcom/google/gson/reflect/TypeToken;)Lm2/b0;

    move-result-object p1

    new-instance v2, Ls2/c;

    invoke-direct {v2, p1}, Ls2/c;-><init>(Lm2/b0;)V

    :cond_0
    return-object v2

    :pswitch_0
    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object p1

    const-class p2, Ljava/sql/Time;

    if-ne p1, p2, :cond_1

    new-instance v2, Ls2/b;

    invoke-direct {v2}, Ls2/b;-><init>()V

    :cond_1
    return-object v2

    :pswitch_1
    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object p1

    const-class p2, Ljava/sql/Date;

    if-ne p1, p2, :cond_2

    new-instance v2, Ls2/a;

    invoke-direct {v2}, Ls2/a;-><init>()V

    :cond_2
    return-object v2

    :pswitch_2
    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object p1

    const-class p2, Ljava/lang/Enum;

    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-ne p1, p2, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result p2

    if-nez p2, :cond_4

    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    :cond_4
    new-instance v2, Lcom/auth0/android/request/internal/h;

    invoke-direct {v2, p1}, Lcom/auth0/android/request/internal/h;-><init>(Ljava/lang/Class;)V

    :cond_5
    :goto_0
    return-object v2

    :pswitch_3
    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object p1

    if-ne p1, v1, :cond_6

    new-instance v2, Lp2/c;

    invoke-direct {v2}, Lp2/c;-><init>()V

    :cond_6
    return-object v2

    :pswitch_4
    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object p2

    instance-of v0, p2, Ljava/lang/reflect/GenericArrayType;

    if-nez v0, :cond_7

    instance-of v1, p2, Ljava/lang/Class;

    if-eqz v1, :cond_9

    move-object v1, p2

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_2

    :cond_7
    if-eqz v0, :cond_8

    check-cast p2, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {p2}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object p2

    goto :goto_1

    :cond_8
    check-cast p2, Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p2

    :goto_1
    invoke-static {p2}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p1, v0}, Lm2/m;->c(Lcom/google/gson/reflect/TypeToken;)Lm2/b0;

    move-result-object v0

    new-instance v2, Lp2/a;

    invoke-static {p2}, Lo2/d;->f(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p2

    invoke-direct {v2, p1, v0, p2}, Lp2/a;-><init>(Lm2/m;Lm2/b0;Ljava/lang/Class;)V

    :cond_9
    :goto_2
    return-object v2

    :pswitch_5
    invoke-virtual {p1, p0, p2}, Lm2/m;->d(Lm2/c0;Lcom/google/gson/reflect/TypeToken;)Lm2/b0;

    move-result-object p1

    new-instance p2, Lcom/auth0/android/request/internal/h;

    const/4 v0, 0x0

    invoke-direct {p2, p0, p1, v0}, Lcom/auth0/android/request/internal/h;-><init>(Lm2/c0;Ljava/lang/Object;I)V

    invoke-virtual {p2}, Lm2/b0;->a()Lm2/k;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
