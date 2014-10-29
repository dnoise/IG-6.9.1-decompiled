.class final Lcom/instagram/creation/b/d/d;
.super Ljava/lang/Object;
.source "PendingMediaStoreSerializer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/creation/b/d/c;


# direct methods
.method constructor <init>(Lcom/instagram/creation/b/d/c;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/instagram/creation/b/d/d;->a:Lcom/instagram/creation/b/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/instagram/creation/b/d/d;->a:Lcom/instagram/creation/b/d/c;

    invoke-virtual {v0}, Lcom/instagram/creation/b/d/c;->c()V

    .line 51
    return-void
.end method
