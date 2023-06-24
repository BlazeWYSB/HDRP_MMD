using UnityEngine;
using UnityEngine.Rendering.HighDefinition;

// Include material common properties names
using static UnityEngine.Rendering.HighDefinition.HDMaterialProperties;

namespace UnityEditor.Rendering.HighDefinition
{
        /// <summary>The UI block that represents the surface options for decal materials.</summary>
        public class PGRUIBlock : MaterialUIBlock
        {
            internal class Styles
            {
                public static GUIContent header { get; } = EditorGUIUtility.TrTextContent("PGR Inputs");
                public static GUIContent nprAOMapText = new GUIContent("NPR AO Map", "rb is hightlight;b is shadow");
                public static GUIContent outlineStrength = new GUIContent("Outline Strength", "rb is hightlight;b is shadow");
            
            }

            MaterialProperty nprAOMap = new MaterialProperty();
            MaterialProperty outlineStrength = new MaterialProperty();

            /// <summary>
            /// Constructs a PGRUIBlock based on the parameters.
            /// </summary>
            /// <param name="expandableBit">Bit index used to store the foldout state.</param>
            public PGRUIBlock(ExpandableBit expandableBit)
                : base(expandableBit, Styles.header)
            {
            }

            /// <summary>
            /// Loads the material properties for the block.
            /// </summary>
            public override void LoadMaterialProperties()
            {
                outlineStrength = FindProperty(kOutlineStrength);
                nprAOMap = FindProperty(kNPRAOMap);
            }

            /// <summary>
            /// Renders the properties in the block.
            /// </summary>
            protected override void OnGUIOpen()
            {

                if (nprAOMap != null)
                    materialEditor.ShaderProperty(nprAOMap, Styles.nprAOMapText);
                if (outlineStrength != null)
                    materialEditor.ShaderProperty(outlineStrength, Styles.outlineStrength);
            }
        }
    }
