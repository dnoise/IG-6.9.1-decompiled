.class final Lcom/facebook/e/c/l;
.super Ljava/lang/ThreadLocal;
.source "Tracer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Lcom/facebook/e/c/m;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method

.method private static a()Lcom/facebook/e/c/m;
    .locals 2

    .prologue
    .line 51
    new-instance v0, Lcom/facebook/e/c/m;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/e/c/m;-><init>(B)V

    return-object v0
.end method


# virtual methods
.method protected final synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 48
    invoke-static {}, Lcom/facebook/e/c/l;->a()Lcom/facebook/e/c/m;

    move-result-object v0

    return-object v0
.end method
