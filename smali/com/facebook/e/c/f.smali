.class final Lcom/facebook/e/c/f;
.super Ljava/lang/Object;
.source "ThreadTrace.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/facebook/e/c/g;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/facebook/e/c/g;Lcom/facebook/e/c/g;)I
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/facebook/e/c/g;->f()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/facebook/e/c/g;->e()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 59
    invoke-virtual {p1}, Lcom/facebook/e/c/g;->f()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/facebook/e/c/g;->e()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 60
    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 61
    const/4 v0, -0x1

    .line 65
    :goto_0
    return v0

    .line 62
    :cond_0
    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 63
    const/4 v0, 0x1

    goto :goto_0

    .line 65
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    check-cast p1, Lcom/facebook/e/c/g;

    .end local p1
    check-cast p2, Lcom/facebook/e/c/g;

    .end local p2
    invoke-static {p1, p2}, Lcom/facebook/e/c/f;->a(Lcom/facebook/e/c/g;Lcom/facebook/e/c/g;)I

    move-result v0

    return v0
.end method
