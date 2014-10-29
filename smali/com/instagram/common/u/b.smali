.class public final Lcom/instagram/common/u/b;
.super Ljava/lang/Object;
.source "NotificationController.java"


# instance fields
.field private final a:Ljava/util/concurrent/Executor;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/instagram/common/u/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/instagram/common/u/b;->a:Ljava/util/concurrent/Executor;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/instagram/common/u/b;->b:Ljava/util/Map;

    .line 52
    return-void
.end method

.method public static a()Lcom/instagram/common/u/b;
    .locals 2

    .prologue
    .line 46
    new-instance v0, Lcom/instagram/common/u/b;

    invoke-static {}, Lcom/instagram/common/u/j;->a()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/common/u/b;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method static synthetic a(Lcom/instagram/common/u/b;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/instagram/common/u/b;->b:Ljava/util/Map;

    return-object v0
.end method

.method private c(Ljava/lang/String;)Lcom/instagram/common/u/a;
    .locals 3
    .parameter

    .prologue
    .line 150
    iget-object v0, p0, Lcom/instagram/common/u/b;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/common/u/a;

    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "category "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/common/l/a/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/instagram/common/u/b;->c(Ljava/lang/String;)Lcom/instagram/common/u/a;

    move-result-object v0

    .line 108
    iget-object v1, p0, Lcom/instagram/common/u/b;->a:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/instagram/common/u/f;

    invoke-direct {v2, p0, v0}, Lcom/instagram/common/u/f;-><init>(Lcom/instagram/common/u/b;Lcom/instagram/common/u/a;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 118
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/instagram/common/u/i;Lcom/instagram/common/analytics/d;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<DataType::",
            "Lcom/instagram/common/u/c/a;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/instagram/common/u/i",
            "<TDataType;>;",
            "Lcom/instagram/common/analytics/d;",
            ")V"
        }
    .end annotation

    .prologue
    .line 57
    new-instance v0, Lcom/instagram/common/u/a;

    invoke-static {}, Lcom/instagram/common/u/k;->a()Landroid/support/v4/app/bx;

    move-result-object v1

    invoke-direct {v0, v1, p2, p3}, Lcom/instagram/common/u/a;-><init>(Landroid/support/v4/app/bx;Lcom/instagram/common/u/i;Lcom/instagram/common/analytics/d;)V

    .line 62
    iget-object v1, p0, Lcom/instagram/common/u/b;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/instagram/common/u/b;->c(Ljava/lang/String;)Lcom/instagram/common/u/a;

    move-result-object v0

    .line 80
    iget-object v1, p0, Lcom/instagram/common/u/b;->a:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/instagram/common/u/d;

    invoke-direct {v2, p0, v0, p2}, Lcom/instagram/common/u/d;-><init>(Lcom/instagram/common/u/b;Lcom/instagram/common/u/a;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 90
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/instagram/common/u/c/a;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/instagram/common/u/b;->c(Ljava/lang/String;)Lcom/instagram/common/u/a;

    move-result-object v0

    .line 67
    iget-object v1, p0, Lcom/instagram/common/u/b;->a:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/instagram/common/u/c;

    invoke-direct {v2, p0, v0, p2, p3}, Lcom/instagram/common/u/c;-><init>(Lcom/instagram/common/u/b;Lcom/instagram/common/u/a;Ljava/lang/String;Lcom/instagram/common/u/c/a;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 76
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/instagram/common/u/b;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/instagram/common/u/h;

    invoke-direct {v1, p0}, Lcom/instagram/common/u/h;-><init>(Lcom/instagram/common/u/b;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 147
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/instagram/common/u/b;->c(Ljava/lang/String;)Lcom/instagram/common/u/a;

    move-result-object v0

    .line 122
    iget-object v1, p0, Lcom/instagram/common/u/b;->a:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/instagram/common/u/g;

    invoke-direct {v2, p0, v0}, Lcom/instagram/common/u/g;-><init>(Lcom/instagram/common/u/b;Lcom/instagram/common/u/a;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 132
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/instagram/common/u/b;->c(Ljava/lang/String;)Lcom/instagram/common/u/a;

    move-result-object v0

    .line 94
    iget-object v1, p0, Lcom/instagram/common/u/b;->a:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/instagram/common/u/e;

    invoke-direct {v2, p0, v0, p2}, Lcom/instagram/common/u/e;-><init>(Lcom/instagram/common/u/b;Lcom/instagram/common/u/a;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 104
    return-void
.end method
