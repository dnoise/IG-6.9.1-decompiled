.class final Lcom/facebook/br;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/facebook/ch;

.field final synthetic b:Ljava/lang/Exception;

.field final synthetic c:Lcom/facebook/bo;


# direct methods
.method constructor <init>(Lcom/facebook/bo;Lcom/facebook/ch;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1184
    iput-object p1, p0, Lcom/facebook/br;->c:Lcom/facebook/bo;

    iput-object p2, p0, Lcom/facebook/br;->a:Lcom/facebook/ch;

    iput-object p3, p0, Lcom/facebook/br;->b:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 1186
    iget-object v0, p0, Lcom/facebook/br;->c:Lcom/facebook/bo;

    invoke-static {v0}, Lcom/facebook/bo;->b(Lcom/facebook/bo;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/cc;

    .line 1187
    new-instance v2, Lcom/facebook/bs;

    invoke-direct {v2, p0, v0}, Lcom/facebook/bs;-><init>(Lcom/facebook/br;Lcom/facebook/cc;)V

    .line 1194
    iget-object v0, p0, Lcom/facebook/br;->c:Lcom/facebook/bo;

    invoke-static {v0}, Lcom/facebook/bo;->c(Lcom/facebook/bo;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/facebook/bo;->a(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1196
    :cond_0
    return-void
.end method
