.class public Lcom/auth0/android/result/Credentials;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final accessToken:Ljava/lang/String;
    .annotation runtime Ln2/b;
        value = "access_token"
    .end annotation
.end field

.field private final expiresAt:Ljava/util/Date;
    .annotation runtime Ln2/b;
        value = "expires_at"
    .end annotation
.end field

.field private final idToken:Ljava/lang/String;
    .annotation runtime Ln2/b;
        value = "id_token"
    .end annotation
.end field

.field private recoveryCode:Ljava/lang/String;
    .annotation runtime Ln2/b;
        value = "recovery_code"
    .end annotation
.end field

.field private final refreshToken:Ljava/lang/String;
    .annotation runtime Ln2/b;
        value = "refresh_token"
    .end annotation
.end field

.field private final scope:Ljava/lang/String;
    .annotation runtime Ln2/b;
        value = "scope"
    .end annotation
.end field

.field private final type:Ljava/lang/String;
    .annotation runtime Ln2/b;
        value = "token_type"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V
    .locals 1

    const-string v0, "idToken"

    invoke-static {p1, v0}, Lc3/h;->b0(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accessToken"

    invoke-static {p2, v0}, Lc3/h;->b0(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p3, v0}, Lc3/h;->b0(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "expiresAt"

    invoke-static {p5, v0}, Lc3/h;->b0(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/auth0/android/result/Credentials;->idToken:Ljava/lang/String;

    iput-object p2, p0, Lcom/auth0/android/result/Credentials;->accessToken:Ljava/lang/String;

    iput-object p3, p0, Lcom/auth0/android/result/Credentials;->type:Ljava/lang/String;

    iput-object p4, p0, Lcom/auth0/android/result/Credentials;->refreshToken:Ljava/lang/String;

    iput-object p5, p0, Lcom/auth0/android/result/Credentials;->expiresAt:Ljava/util/Date;

    iput-object p6, p0, Lcom/auth0/android/result/Credentials;->scope:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/auth0/android/result/Credentials;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/auth0/android/result/Credentials;->expiresAt:Ljava/util/Date;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/auth0/android/result/Credentials;->idToken:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/auth0/android/result/Credentials;->refreshToken:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/auth0/android/result/Credentials;->scope:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/auth0/android/result/Credentials;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final g(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/auth0/android/result/Credentials;->recoveryCode:Ljava/lang/String;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Credentials(idToken=\'xxxxx\', accessToken=\'xxxxx\', type=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/auth0/android/result/Credentials;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', refreshToken=\'xxxxx\', expiresAt=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/auth0/android/result/Credentials;->expiresAt:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\', scope=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/auth0/android/result/Credentials;->scope:Ljava/lang/String;

    const-string v2, "\')"

    invoke-static {v0, v1, v2}, La;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
