.class final Lcom/instagram/common/o/c;
.super Ljava/lang/Object;
.source "LazyPreferences.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/common/o/a;


# direct methods
.method constructor <init>(Lcom/instagram/common/o/a;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/instagram/common/o/c;->a:Lcom/instagram/common/o/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/instagram/common/o/c;->a:Lcom/instagram/common/o/a;

    invoke-virtual {v0}, Lcom/instagram/common/o/a;->d()V

    .line 103
    return-void
.end method
