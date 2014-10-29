.class final Lcom/instagram/android/directshare/c/l;
.super Ljava/lang/Object;
.source "InboxFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/directshare/c/c;


# direct methods
.method constructor <init>(Lcom/instagram/android/directshare/c/c;)V
    .locals 0
    .parameter

    .prologue
    .line 432
    iput-object p1, p0, Lcom/instagram/android/directshare/c/l;->a:Lcom/instagram/android/directshare/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 435
    iget-object v0, p0, Lcom/instagram/android/directshare/c/l;->a:Lcom/instagram/android/directshare/c/c;

    invoke-static {v0}, Lcom/instagram/android/directshare/c/c;->n(Lcom/instagram/android/directshare/c/c;)Lcom/instagram/android/activity/c;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/android/activity/c;->a(Z)V

    .line 436
    return-void
.end method
