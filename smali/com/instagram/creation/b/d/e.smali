.class final Lcom/instagram/creation/b/d/e;
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
    .line 75
    iput-object p1, p0, Lcom/instagram/creation/b/d/e;->a:Lcom/instagram/creation/b/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/instagram/creation/b/d/e;->a:Lcom/instagram/creation/b/d/c;

    invoke-static {v0}, Lcom/instagram/creation/b/d/c;->a(Lcom/instagram/creation/b/d/c;)V

    .line 79
    return-void
.end method
