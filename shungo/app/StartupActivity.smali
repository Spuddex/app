.class public final Lcom/shungo/app/StartupActivity;
.super Le/l;
.source "SourceFile"


# static fields
.field public static final synthetic w:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Le/l;-><init>()V

    sget-object v0, Lx2/c;->b:Ljava/util/concurrent/ExecutorService;

    invoke-static {}, Ly2/c;->a()Ly2/k;

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroidx/fragment/app/u;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Ll0/b;

    invoke-direct {p1, p0}, Ll0/b;-><init>(Ljava/lang/Object;)V

    sget-object v0, Lx2/c;->b:Ljava/util/concurrent/ExecutorService;

    sget-object v0, Ly2/o;->b:Lj/a;

    invoke-static {}, Ly2/c;->b()Ly2/k;

    move-result-object v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    invoke-virtual {p1, v1}, Ll0/b;->a(Lx2/c;)V

    goto :goto_0

    :cond_0
    new-instance v2, Le/j0;

    const/16 v3, 0xb

    invoke-direct {v2, p1, v3, v1}, Le/j0;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v0, v2}, Lj/a;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    new-instance v1, Le/j0;

    const/16 v2, 0xa

    invoke-direct {v1, v0, v2, p1}, Le/j0;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    sget-object p1, Lx2/c;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
