.class final Lcom/facebook/e/c/h;
.super Lcom/facebook/d/e/c;
.source "TraceEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/d/e/c",
        "<",
        "Lcom/facebook/e/c/g;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/facebook/d/e/c;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method private static a(Lcom/facebook/e/c/g;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    invoke-static {p0}, Lcom/facebook/e/c/g;->b(Lcom/facebook/e/c/g;)Ljava/lang/String;

    .line 59
    invoke-static {p0}, Lcom/facebook/e/c/g;->c(Lcom/facebook/e/c/g;)[Ljava/lang/Object;

    .line 60
    return-void
.end method

.method private static b()Lcom/facebook/e/c/g;
    .locals 2

    .prologue
    .line 53
    new-instance v0, Lcom/facebook/e/c/g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/e/c/g;-><init>(B)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 50
    invoke-static {}, Lcom/facebook/e/c/h;->b()Lcom/facebook/e/c/g;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    check-cast p1, Lcom/facebook/e/c/g;

    invoke-static {p1}, Lcom/facebook/e/c/h;->a(Lcom/facebook/e/c/g;)V

    return-void
.end method
