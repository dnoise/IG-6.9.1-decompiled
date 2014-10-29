.class final Lcom/facebook/g/s;
.super Ljava/lang/Object;
.source "SessionTracker.java"

# interfaces
.implements Lcom/facebook/cc;


# instance fields
.field final synthetic a:Lcom/facebook/g/q;

.field private final b:Lcom/facebook/cc;


# direct methods
.method public constructor <init>(Lcom/facebook/g/q;Lcom/facebook/cc;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 223
    iput-object p1, p0, Lcom/facebook/g/s;->a:Lcom/facebook/g/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    iput-object p2, p0, Lcom/facebook/g/s;->b:Lcom/facebook/cc;

    .line 225
    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/bo;Lcom/facebook/ch;Ljava/lang/Exception;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 229
    iget-object v0, p0, Lcom/facebook/g/s;->b:Lcom/facebook/cc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/g/s;->a:Lcom/facebook/g/q;

    invoke-virtual {v0}, Lcom/facebook/g/q;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/facebook/g/s;->b:Lcom/facebook/cc;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/cc;->a(Lcom/facebook/bo;Lcom/facebook/ch;Ljava/lang/Exception;)V

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/facebook/g/s;->a:Lcom/facebook/g/q;

    invoke-static {v0}, Lcom/facebook/g/q;->b(Lcom/facebook/g/q;)Lcom/facebook/bo;

    move-result-object v0

    if-ne p1, v0, :cond_1

    invoke-virtual {p2}, Lcom/facebook/ch;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 235
    iget-object v0, p0, Lcom/facebook/g/s;->a:Lcom/facebook/g/q;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/g/q;->a(Lcom/facebook/bo;)V

    .line 237
    :cond_1
    return-void
.end method
