.class final Lcom/facebook/bs;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/facebook/cc;

.field final synthetic b:Lcom/facebook/br;


# direct methods
.method constructor <init>(Lcom/facebook/br;Lcom/facebook/cc;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1187
    iput-object p1, p0, Lcom/facebook/bs;->b:Lcom/facebook/br;

    iput-object p2, p0, Lcom/facebook/bs;->a:Lcom/facebook/cc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 1190
    iget-object v0, p0, Lcom/facebook/bs;->a:Lcom/facebook/cc;

    iget-object v1, p0, Lcom/facebook/bs;->b:Lcom/facebook/br;

    iget-object v1, v1, Lcom/facebook/br;->c:Lcom/facebook/bo;

    iget-object v2, p0, Lcom/facebook/bs;->b:Lcom/facebook/br;

    iget-object v2, v2, Lcom/facebook/br;->a:Lcom/facebook/ch;

    iget-object v3, p0, Lcom/facebook/bs;->b:Lcom/facebook/br;

    iget-object v3, v3, Lcom/facebook/br;->b:Ljava/lang/Exception;

    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/cc;->a(Lcom/facebook/bo;Lcom/facebook/ch;Ljava/lang/Exception;)V

    .line 1191
    return-void
.end method
