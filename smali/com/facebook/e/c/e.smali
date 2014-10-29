.class final Lcom/facebook/e/c/e;
.super Ljava/lang/ThreadLocal;
.source "ThreadTrace.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Lcom/facebook/e/c/d;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method

.method private static a()Lcom/facebook/e/c/d;
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/facebook/e/c/d;

    invoke-direct {v0}, Lcom/facebook/e/c/d;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected final synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    invoke-static {}, Lcom/facebook/e/c/e;->a()Lcom/facebook/e/c/d;

    move-result-object v0

    return-object v0
.end method
