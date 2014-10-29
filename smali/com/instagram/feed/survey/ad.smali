.class final Lcom/instagram/feed/survey/ad;
.super Ljava/lang/Object;
.source "SurveyToolHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/feed/survey/q;


# direct methods
.method constructor <init>(Lcom/instagram/feed/survey/q;)V
    .locals 0
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, Lcom/instagram/feed/survey/ad;->a:Lcom/instagram/feed/survey/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 200
    iget-object v0, p0, Lcom/instagram/feed/survey/ad;->a:Lcom/instagram/feed/survey/q;

    invoke-static {v0}, Lcom/instagram/feed/survey/q;->d(Lcom/instagram/feed/survey/q;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 201
    return-void
.end method
