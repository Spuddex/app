.class public final Lcom/auth0/android/request/internal/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk1/e;


# instance fields
.field public final a:Lm2/b0;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lm2/m;)V
    .locals 1

    const-string v0, "gson"

    invoke-static {p2, v0}, Lc3/h;->b0(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/Class;)Lcom/google/gson/reflect/TypeToken;

    move-result-object p1

    invoke-virtual {p2, p1}, Lm2/m;->c(Lcom/google/gson/reflect/TypeToken;)Lm2/b0;

    move-result-object p1

    .line 3
    invoke-direct {p0, p1}, Lcom/auth0/android/request/internal/e;-><init>(Lm2/b0;)V

    return-void
.end method

.method public constructor <init>(Lm2/b0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/auth0/android/request/internal/e;->a:Lm2/b0;

    return-void
.end method
