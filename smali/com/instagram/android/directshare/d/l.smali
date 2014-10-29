.class final Lcom/instagram/android/directshare/d/l;
.super Ljava/lang/Object;
.source "DirectSharePermalinkFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/feed/d/b;

.field final synthetic b:Lcom/instagram/android/directshare/d/c;


# direct methods
.method constructor <init>(Lcom/instagram/android/directshare/d/c;Lcom/instagram/feed/d/b;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 734
    iput-object p1, p0, Lcom/instagram/android/directshare/d/l;->b:Lcom/instagram/android/directshare/d/c;

    iput-object p2, p0, Lcom/instagram/android/directshare/d/l;->a:Lcom/instagram/feed/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 737
    iget-object v0, p0, Lcom/instagram/android/directshare/d/l;->b:Lcom/instagram/android/directshare/d/c;

    invoke-virtual {v0}, Lcom/instagram/android/directshare/d/c;->n()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/directshare/d/l;->b:Lcom/instagram/android/directshare/d/c;

    invoke-virtual {v1}, Lcom/instagram/android/directshare/d/c;->z()Landroid/support/v4/app/an;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/directshare/d/l;->a:Lcom/instagram/feed/d/b;

    new-instance v3, Lcom/instagram/android/directshare/d/aa;

    iget-object v4, p0, Lcom/instagram/android/directshare/d/l;->b:Lcom/instagram/android/directshare/d/c;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/instagram/android/directshare/d/aa;-><init>(Lcom/instagram/android/directshare/d/c;B)V

    invoke-static {v0, v1, v2, v3}, Lcom/instagram/f/a/a/a/a;->a(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/feed/d/b;Lcom/instagram/api/j/a;)V

    .line 743
    return-void
.end method
