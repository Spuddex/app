.class public final Lcom/auth0/android/request/internal/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lk1/f;

.field public final b:Lg1/a;

.field public final c:Ljava/util/LinkedHashMap;


# direct methods
.method public constructor <init>(Lk1/a;Lg1/a;)V
    .locals 3

    const-string v0, "client"

    invoke-static {p1, v0}, Lc3/h;->b0(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/auth0/android/request/internal/l;->a:Lk1/f;

    iput-object p2, p0, Lcom/auth0/android/request/internal/l;->b:Lg1/a;

    const/4 p1, 0x1

    new-array p2, p1, [Lz2/a;

    new-instance v0, Lz2/a;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "getDefault().toString()"

    invoke-static {v1, v2}, Lc3/h;->a0(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "en_US"

    :goto_0
    const-string v2, "Accept-Language"

    invoke-direct {v0, v2, v1}, Lz2/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x0

    aput-object v0, p2, v1

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-static {p1}, Lc3/h;->v1(I)I

    move-result p1

    invoke-direct {v0, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    aget-object p1, p2, v1

    iget-object p2, p1, Lz2/a;->b:Ljava/lang/Object;

    iget-object p1, p1, Lz2/a;->c:Ljava/lang/Object;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/auth0/android/request/internal/l;->c:Ljava/util/LinkedHashMap;

    return-void
.end method


# virtual methods
.method public final a(Lk1/d;Ljava/lang/String;Lcom/auth0/android/request/internal/e;Lg1/a;)Lcom/auth0/android/request/internal/a;
    .locals 8

    sget-object v0, Lcom/auth0/android/request/internal/b;->b:Lj1/z;

    invoke-virtual {v0}, Lj1/z;->f()Lcom/auth0/android/request/internal/b;

    move-result-object v7

    const-string v0, "url"

    invoke-static {p2, v0}, Lc3/h;->b0(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/auth0/android/request/internal/l;->a:Lk1/f;

    const-string v0, "client"

    invoke-static {v4, v0}, Lc3/h;->b0(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorAdapter"

    invoke-static {p4, v0}, Lc3/h;->b0(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/auth0/android/request/internal/a;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/auth0/android/request/internal/a;-><init>(Lk1/d;Ljava/lang/String;Lk1/f;Lcom/auth0/android/request/internal/e;Lg1/a;Lcom/auth0/android/request/internal/b;)V

    iget-object p1, p0, Lcom/auth0/android/request/internal/l;->c:Ljava/util/LinkedHashMap;

    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {v0, p4, p3}, Lcom/auth0/android/request/internal/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method
