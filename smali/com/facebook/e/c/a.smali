.class public final Lcom/facebook/e/c/a;
.super Ljava/lang/Object;
.source "AsyncTracer.java"


# instance fields
.field private final a:Lcom/facebook/e/c/d;

.field private final b:I

.field private final c:J

.field private final d:Ljava/lang/String;

.field private e:J


# direct methods
.method private constructor <init>(Lcom/facebook/e/c/d;IJLjava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/e/c/a;->e:J

    .line 55
    iput-object p1, p0, Lcom/facebook/e/c/a;->a:Lcom/facebook/e/c/d;

    .line 56
    iput p2, p0, Lcom/facebook/e/c/a;->b:I

    .line 57
    iput-wide p3, p0, Lcom/facebook/e/c/a;->c:J

    .line 58
    iput-object p5, p0, Lcom/facebook/e/c/a;->d:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/facebook/e/c/a;
    .locals 1
    .parameter

    .prologue
    .line 43
    invoke-static {p0}, Lcom/facebook/e/c/a;->c(Ljava/lang/String;)Lcom/facebook/e/c/a;

    move-result-object v0

    return-object v0
.end method

.method private c()J
    .locals 5

    .prologue
    .line 129
    iget-object v0, p0, Lcom/facebook/e/c/a;->d:Ljava/lang/String;

    iget v1, p0, Lcom/facebook/e/c/a;->b:I

    invoke-static {v0, v1}, Lcom/facebook/systrace/a;->b(Ljava/lang/String;I)V

    .line 130
    iget-object v0, p0, Lcom/facebook/e/c/a;->a:Lcom/facebook/e/c/d;

    iget v1, p0, Lcom/facebook/e/c/a;->b:I

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/facebook/e/c/d;->a(IJZ)J

    move-result-wide v0

    .line 131
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 132
    invoke-static {}, Lcom/facebook/e/c/n;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/facebook/e/c/a;->c:J

    sub-long/2addr v0, v2

    .line 134
    :cond_0
    iput-wide v0, p0, Lcom/facebook/e/c/a;->e:J

    .line 135
    return-wide v0
.end method

.method private static c(Ljava/lang/String;)Lcom/facebook/e/c/a;
    .locals 6
    .parameter

    .prologue
    .line 47
    sget-object v0, Lcom/facebook/e/c/d;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/e/c/d;

    .line 48
    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v0, v2}, Lcom/facebook/e/c/d;->a(Ljava/lang/String;[Ljava/lang/Object;Z)I

    move-result v2

    .line 49
    new-instance v0, Lcom/facebook/e/c/a;

    invoke-static {}, Lcom/facebook/e/c/n;->a()J

    move-result-wide v3

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/e/c/a;-><init>(Lcom/facebook/e/c/d;IJLjava/lang/String;)V

    .line 50
    iget v1, v0, Lcom/facebook/e/c/a;->b:I

    invoke-static {p0, v1}, Lcom/facebook/systrace/a;->a(Ljava/lang/String;I)V

    .line 51
    return-object v0
.end method


# virtual methods
.method public final a()J
    .locals 4

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/facebook/e/c/a;->c()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public final b()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/e/c/g;",
            ">;"
        }
    .end annotation

    .prologue
    .line 180
    iget-object v0, p0, Lcom/facebook/e/c/a;->a:Lcom/facebook/e/c/d;

    iget v1, p0, Lcom/facebook/e/c/a;->b:I

    invoke-virtual {v0, v1}, Lcom/facebook/e/c/d;->a(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 169
    iget-object v0, p0, Lcom/facebook/e/c/a;->a:Lcom/facebook/e/c/d;

    iget v1, p0, Lcom/facebook/e/c/a;->b:I

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2, p1}, Lcom/facebook/e/c/d;->a(IILjava/lang/String;)V

    .line 170
    return-void
.end method
