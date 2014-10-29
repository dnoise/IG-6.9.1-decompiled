.class final Landroid/support/v4/app/cg;
.super Ljava/lang/Object;
.source "NotificationManagerCompat.java"


# instance fields
.field public final a:Landroid/content/ComponentName;

.field public b:Z

.field public c:Landroid/support/v4/app/ah;

.field public d:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/support/v4/app/ch;",
            ">;"
        }
    .end annotation
.end field

.field public e:I


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 527
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 519
    iput-boolean v1, p0, Landroid/support/v4/app/cg;->b:Z

    .line 523
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/cg;->d:Ljava/util/LinkedList;

    .line 525
    iput v1, p0, Landroid/support/v4/app/cg;->e:I

    .line 528
    iput-object p1, p0, Landroid/support/v4/app/cg;->a:Landroid/content/ComponentName;

    .line 529
    return-void
.end method
