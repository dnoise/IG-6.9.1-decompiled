.class final Lcom/instagram/android/feed/d/c;
.super Ljava/lang/Object;
.source "SponsoredAboutDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lcom/instagram/android/feed/d/a;


# direct methods
.method constructor <init>(Lcom/instagram/android/feed/d/a;Landroid/app/Dialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/instagram/android/feed/d/c;->b:Lcom/instagram/android/feed/d/a;

    iput-object p2, p0, Lcom/instagram/android/feed/d/c;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/instagram/android/feed/d/c;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 50
    return-void
.end method
