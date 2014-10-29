.class public Lcom/facebook/d/b/c;
.super Lcom/facebook/d/b/a;
.source "FbErrorReporterImpl.java"


# static fields
.field public static final a:La/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/a/a",
            "<",
            "Lcom/facebook/a/i;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/lang/String;

.field private static i:Z


# instance fields
.field private final c:La/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/a/a",
            "<",
            "Lcom/facebook/d/h/a;",
            ">;"
        }
    .end annotation
.end field

.field private final d:La/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/a/a",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/concurrent/ExecutorService;

.field private final f:Ljava/util/Random;

.field private final g:La/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/a/a",
            "<",
            "Lcom/facebook/a/i;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 25
    const-class v0, Lcom/facebook/d/b/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/d/b/c;->b:Ljava/lang/String;

    .line 44
    new-instance v0, Lcom/facebook/d/b/e;

    invoke-direct {v0, v1}, Lcom/facebook/d/b/e;-><init>(B)V

    sput-object v0, Lcom/facebook/d/b/c;->a:La/a/a;

    .line 54
    sput-boolean v1, Lcom/facebook/d/b/c;->i:Z

    return-void
.end method

.method public constructor <init>(La/a/a;La/a/a;Ljava/util/concurrent/ExecutorService;Ljava/util/Random;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/a/a",
            "<",
            "Lcom/facebook/d/h/a;",
            ">;",
            "La/a/a",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/concurrent/ExecutorService;",
            "Ljava/util/Random;",
            ")V"
        }
    .end annotation

    .prologue
    .line 66
    sget-object v5, Lcom/facebook/d/b/c;->a:La/a/a;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/d/b/c;-><init>(La/a/a;La/a/a;Ljava/util/concurrent/ExecutorService;Ljava/util/Random;La/a/a;)V

    .line 74
    return-void
.end method

.method private constructor <init>(La/a/a;La/a/a;Ljava/util/concurrent/ExecutorService;Ljava/util/Random;La/a/a;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/a/a",
            "<",
            "Lcom/facebook/d/h/a;",
            ">;",
            "La/a/a",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/concurrent/ExecutorService;",
            "Ljava/util/Random;",
            "La/a/a",
            "<",
            "Lcom/facebook/a/i;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/facebook/d/b/a;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/facebook/d/b/c;->c:La/a/a;

    .line 84
    iput-object p2, p0, Lcom/facebook/d/b/c;->d:La/a/a;

    .line 85
    iput-object p3, p0, Lcom/facebook/d/b/c;->e:Ljava/util/concurrent/ExecutorService;

    .line 86
    iput-object p4, p0, Lcom/facebook/d/b/c;->f:Ljava/util/Random;

    .line 87
    iput-object p5, p0, Lcom/facebook/d/b/c;->g:La/a/a;

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/d/b/c;->h:Z

    .line 89
    return-void
.end method

.method static synthetic a(Lcom/facebook/d/b/c;)La/a/a;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/facebook/d/b/c;->g:La/a/a;

    return-object v0
.end method

.method private a(Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 285
    iget-object v0, p0, Lcom/facebook/d/b/c;->d:La/a/a;

    invoke-interface {v0}, La/a/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/d/b/c;->c:La/a/a;

    invoke-interface {v0}, La/a/a;->a()Ljava/lang/Object;

    move-result-object v0

    sget-object v3, Lcom/facebook/d/h/a;->a:Lcom/facebook/d/h/a;

    if-ne v0, v3, :cond_2

    :cond_0
    move v0, v2

    .line 289
    :goto_0
    if-nez v0, :cond_1

    .line 290
    if-eqz p3, :cond_3

    move-object p1, v1

    .line 302
    :cond_1
    :goto_1
    return-object p1

    .line 285
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 293
    :cond_3
    iget-object v0, p0, Lcom/facebook/d/b/c;->f:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    rem-int/2addr v0, p2

    if-eqz v0, :cond_4

    move-object p1, v1

    .line 295
    goto :goto_1

    .line 297
    :cond_4
    if-eq p2, v2, :cond_1

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " [freq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1
.end method

.method static synthetic b(Lcom/facebook/d/b/c;)Z
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/facebook/d/b/c;->h:Z

    return v0
.end method


# virtual methods
.method public final a(Lcom/facebook/d/b/f;)V
    .locals 5
    .parameter

    .prologue
    .line 97
    sget-boolean v0, Lcom/facebook/d/b/c;->i:Z

    if-eqz v0, :cond_1

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/facebook/d/b/c;->c:La/a/a;

    invoke-interface {v0}, La/a/a;->a()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/facebook/d/h/a;->a:Lcom/facebook/d/h/a;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/facebook/d/b/c;->d:La/a/a;

    invoke-interface {v0}, La/a/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    .line 103
    :goto_1
    invoke-virtual {p1}, Lcom/facebook/d/b/f;->d()Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    .line 104
    iget-object v0, p0, Lcom/facebook/d/b/c;->g:La/a/a;

    invoke-interface {v0}, La/a/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/a/i;

    .line 105
    const-string v1, "soft_error_message"

    invoke-virtual {p1}, Lcom/facebook/d/b/f;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/a/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 106
    sget-object v1, Lcom/facebook/d/b/c;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "category: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/facebook/d/b/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " message:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/facebook/d/b/f;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Soft error FAILING HARDER: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/facebook/d/b/f;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/facebook/d/b/f;->c()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 109
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/facebook/a/i;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 101
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 113
    :cond_4
    invoke-virtual {p1}, Lcom/facebook/d/b/f;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/d/b/f;->e()I

    move-result v1

    invoke-virtual {p1}, Lcom/facebook/d/b/f;->f()Z

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/facebook/d/b/c;->a(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    .line 120
    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {p1}, Lcom/facebook/d/b/f;->b()Ljava/lang/String;

    move-result-object v1

    .line 124
    new-instance v2, Lcom/facebook/d/b/h;

    invoke-virtual {p1}, Lcom/facebook/d/b/f;->c()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/facebook/d/b/h;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 125
    iget-object v3, p0, Lcom/facebook/d/b/c;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lcom/facebook/d/b/d;

    invoke-direct {v4, p0, v0, v1, v2}, Lcom/facebook/d/b/d;-><init>(Lcom/facebook/d/b/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method
