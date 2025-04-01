.class public final Lcom/auth0/android/request/internal/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/util/Date;

.field public final j:Ljava/util/Date;

.field public final k:Ljava/lang/String;

.field public final l:Ljava/util/Date;

.field public final m:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lq3/i;->h3(Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    array-length v3, v1

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ne v3, v4, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    aget-object p1, v1, v2

    aget-object v0, v1, v5

    const-string v1, ""

    filled-new-array {p1, v0, v1}, [Ljava/lang/String;

    move-result-object v1

    :cond_0
    array-length p1, v1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_9

    iput-object v1, p0, Lcom/auth0/android/request/internal/k;->a:[Ljava/lang/String;

    aget-object p1, v1, v2

    const-string v0, "encoded"

    invoke-static {p1, v0}, Lc3/h;->b0(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0xb

    invoke-static {p1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    const-string v3, "decode(encoded, Base64.U\u2026RAP or Base64.NO_PADDING)"

    invoke-static {p1, v3}, Lc3/h;->a0(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/String;

    sget-object v6, Lq3/a;->a:Ljava/nio/charset/Charset;

    invoke-direct {v4, p1, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    aget-object p1, v1, v5

    invoke-static {p1, v0}, Lc3/h;->b0(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    invoke-static {p1, v3}, Lc3/h;->a0(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    sget-object p1, Lcom/auth0/android/request/internal/f;->a:Lm2/m;

    new-instance v1, Lcom/auth0/android/request/internal/Jwt$mapAdapter$1;

    invoke-direct {v1}, Lcom/auth0/android/request/internal/Jwt$mapAdapter$1;-><init>()V

    invoke-virtual {p1, v1}, Lm2/m;->c(Lcom/google/gson/reflect/TypeToken;)Lm2/b0;

    move-result-object p1

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, v4}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    new-instance v2, Lt2/b;

    invoke-direct {v2, v1}, Lt2/b;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p1, v2}, Lm2/b0;->b(Lt2/b;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "mapAdapter.fromJson(jsonHeader)"

    invoke-static {v1, v2}, Lc3/h;->a0(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/util/Map;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    new-instance v0, Lt2/b;

    invoke-direct {v0, v2}, Lt2/b;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p1, v0}, Lm2/b0;->b(Lt2/b;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "mapAdapter.fromJson(jsonPayload)"

    invoke-static {p1, v0}, Lc3/h;->a0(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/Map;

    const-string v0, "alg"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v0, v2}, Lc3/h;->Y(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/auth0/android/request/internal/k;->b:Ljava/lang/String;

    const-string v0, "kid"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/auth0/android/request/internal/k;->c:Ljava/lang/String;

    const-string v0, "sub"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/auth0/android/request/internal/k;->d:Ljava/lang/String;

    const-string v0, "iss"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/auth0/android/request/internal/k;->e:Ljava/lang/String;

    const-string v0, "nonce"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/auth0/android/request/internal/k;->f:Ljava/lang/String;

    const-string v0, "org_id"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/auth0/android/request/internal/k;->g:Ljava/lang/String;

    const-string v0, "org_name"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/auth0/android/request/internal/k;->h:Ljava/lang/String;

    const-string v0, "iat"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Double;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Double;

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    const/16 v1, 0x3e8

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    new-instance v0, Ljava/util/Date;

    double-to-long v3, v3

    int-to-long v5, v1

    mul-long/2addr v3, v5

    invoke-direct {v0, v3, v4}, Ljava/util/Date;-><init>(J)V

    goto :goto_1

    :cond_2
    move-object v0, v2

    :goto_1
    iput-object v0, p0, Lcom/auth0/android/request/internal/k;->i:Ljava/util/Date;

    const-string v0, "exp"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Ljava/lang/Double;

    if-eqz v3, :cond_3

    check-cast v0, Ljava/lang/Double;

    goto :goto_2

    :cond_3
    move-object v0, v2

    :goto_2
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    new-instance v0, Ljava/util/Date;

    double-to-long v3, v3

    int-to-long v5, v1

    mul-long/2addr v3, v5

    invoke-direct {v0, v3, v4}, Ljava/util/Date;-><init>(J)V

    goto :goto_3

    :cond_4
    move-object v0, v2

    :goto_3
    iput-object v0, p0, Lcom/auth0/android/request/internal/k;->j:Ljava/util/Date;

    const-string v0, "azp"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/auth0/android/request/internal/k;->k:Ljava/lang/String;

    const-string v0, "auth_time"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Ljava/lang/Double;

    if-eqz v3, :cond_5

    check-cast v0, Ljava/lang/Double;

    goto :goto_4

    :cond_5
    move-object v0, v2

    :goto_4
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    new-instance v0, Ljava/util/Date;

    double-to-long v2, v2

    int-to-long v4, v1

    mul-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    move-object v2, v0

    :cond_6
    iput-object v2, p0, Lcom/auth0/android/request/internal/k;->l:Ljava/util/Date;

    const-string v0, "aud"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_7

    invoke-static {p1}, Lc3/h;->s1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_5

    :cond_7
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_8

    check-cast p1, Ljava/util/List;

    goto :goto_5

    :cond_8
    sget-object p1, La3/p;->b:La3/p;

    :goto_5
    iput-object p1, p0, Lcom/auth0/android/request/internal/k;->m:Ljava/util/List;

    return-void

    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    array-length v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The token was expected to have 3 parts, but got %s."

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "format(format, *args)"

    invoke-static {v0, v1}, Lc3/h;->a0(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
